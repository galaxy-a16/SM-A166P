.class public Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/fabrickeystore/IFabricKeyStore;


# static fields
.field public static final RESET_TOKEN:Ljava/lang/String; = "DROP"

.field public static final RESET_TOKEN_DELIMINATOR:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String; = "FabricKeyStore"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->initFabricKeyStore(Landroid/content/Context;)V

    return-void
.end method

.method private getRecoveryCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getRecoveryCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    invoke-virtual {p0, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;->exportKey(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private initFabricKeyStore(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to check contains key. Arguments cannot be null"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->containsKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public createFabricKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to create fabric Key. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;->create()Z

    move-result p0

    return p0
.end method

.method public createServiceKey(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 4
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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to create service key. Arguments must be valid"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "serviceKeyId cannot be null"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v2, v3, p1, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;->create()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public decryptData(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to decrypt data. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    invoke-virtual {p0, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;->decrypt([B)[B

    move-result-object p0

    return-object p0
.end method

.method public decryptFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to decrypt file. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p3, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;->decrypt(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public decryptStream(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to decrypt stream. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    invoke-virtual {p0, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;->decrypt(Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public deleteChainSigningKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->ATTEST_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->remove()V

    return-void
.end method

.method public deleteKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->deleteKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public deleteKeys(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->deleteKeys(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public encryptData(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to encrypt data. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    invoke-virtual {p0, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;->encrypt([B)[B

    move-result-object p0

    return-object p0
.end method

.method public encryptFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to encrypt file. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p3, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;->encrypt(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public encryptStream(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to encrypt stream. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    invoke-virtual {p0, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;->encrypt(Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public exportFabricKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)[B
    .locals 8

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to export fabric Key. Arguments must be valid"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->verifyMemberKey(Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z

    move-result p6

    if-nez p6, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Fail to verify received Member key, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p6, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object p7, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->MEMBER_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p6, p7, p1, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;

    iget-object p7, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->LINK_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p7, v0, p1, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;

    invoke-virtual {p6}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->getAlias()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p7, p5, p6}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->create([BLjava/lang/String;)Z

    move-result p5

    const-string p6, " "

    if-nez p5, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to agree key exchange, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object p3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    invoke-virtual {p0, p7}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;->exportKey(Ljava/lang/Object;)[B

    move-result-object p0

    if-nez p0, :cond_3

    sget-object p3, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Failed to export Fabric key, "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p7}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->remove()V

    return-object p0
.end method

.method public exportFabricKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B[B)Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p8

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const/4 v1, 0x2

    aput-object v9, v0, v1

    const/4 v1, 0x3

    aput-object v10, v0, v1

    const/4 v1, 0x4

    aput-object v11, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object v12, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string v1, "Fail to export fabric Key. Arguments must be valid"

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->verifyMemberKey(Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to verify received Member key, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->verifyMemberKey(Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to verify received Member PQC key, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :cond_2
    iget-object v0, v6, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->MEMBER_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v0, v1, p1, v9}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;

    iget-object v1, v6, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->LINK_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v1, v2, p1, v9}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v11, v0, v12}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->createWithPQencap([BLjava/lang/String;[B)[B

    move-result-object v0

    const-string v2, " "

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to agree key exchange, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :cond_3
    iget-object v3, v6, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v4, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v3, v4, p1, v8}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    invoke-virtual {v3, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;->exportKey(Ljava/lang/Object;)[B

    move-result-object v3

    if-nez v3, :cond_4

    sget-object v4, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to export Fabric key, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->remove()V

    new-instance v1, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;-><init>([B[B)V

    return-object v1
.end method

.method public exportServiceKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 5
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
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to export service key. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string v2, "Fail to export service key. serviceKeyId cannot be null"

    invoke-static {v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v2, v3, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v4, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v3, v4, p1, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    invoke-virtual {v3, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;->exportKey(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public exportServiceKey(Ljava/lang/String;Ljava/util/List;[Ljava/security/cert/X509Certificate;[BZ)Ljava/util/Map;
    .locals 3
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

    .line 2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to export service key. Arguments must be valid"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyCertChain(Landroid/content/Context;[Ljava/security/cert/X509Certificate;[B)Z

    move-result p4

    if-nez p4, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to verify certChain"

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_2

    sget-object p4, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string v1, "Fail to export service key. serviceKeyId cannot be null"

    invoke-static {p4, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v1, v2, p1, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    invoke-virtual {v1, p3, p5}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;->exportKey([Ljava/security/cert/X509Certificate;Z)[B

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getChainSigningKey(Ljava/lang/String;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to get attest key. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->ATTEST_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->create()Z

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public getMemberKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Triple;
    .locals 3
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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to get member Key. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->ATTEST_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v0, v2, p1, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->MEMBER_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v1, p1, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->create()Z

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;->create()Z

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;->getPublicKey()[B

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->generateSignature(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object p2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->remove()V

    new-instance p3, Lkotlin/Triple;

    invoke-direct {p3, p0, p1, p2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public getMemberKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to get member Key. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->ATTEST_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v0, v2, p1, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->MEMBER_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v1, v2, p1, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->create()Z

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;->create()Z

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;->getPublicKey()[B

    move-result-object v3

    invoke-virtual {v0, p1, p2, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->generateSignature(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->KEM_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v1, p1, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/KemKey;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/KemKey;->create()Z

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/KemKey;->getPQCPublicKey()[B

    move-result-object v6

    invoke-virtual {v0, p1, p2, v6}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->generateSignature(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->remove()V

    new-instance p0, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;-><init>([B[B[Ljava/security/cert/X509Certificate;[B[B)V

    return-object p0
.end method

.method public getRecoveryData(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
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

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->getRecoveryCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->getRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getSakUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->ATTEST_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->create()Z

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->getSakUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->remove()V

    return-object p1
.end method

.method public importFabricKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B)Z
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p8

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v0, v13

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const/4 v1, 0x2

    aput-object v9, v0, v1

    const/4 v1, 0x3

    aput-object v10, v0, v1

    const/4 v1, 0x4

    aput-object v11, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object v12, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string v1, "Fail to import fabric Key. Arguments must be valid"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->verifyMemberKey(Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to verify received Member key, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->MEMBER_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v0, v1, p1, v9}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;

    iget-object v1, v6, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->LINK_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v1, v2, p1, v9}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->create([BLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to agree key exchange, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v0, v6, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v0, v2, p1, v8}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;->importKey(Ljava/lang/Object;[B)Z

    move-result v0

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->remove()V

    return v0
.end method

.method public importFabricKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B[B)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v0, v14

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const/4 v1, 0x2

    aput-object v9, v0, v1

    const/4 v1, 0x3

    aput-object v10, v0, v1

    const/4 v1, 0x4

    aput-object v11, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object v12, v0, v1

    const/16 v1, 0x8

    aput-object v13, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string v1, "Fail to import fabric Key. Arguments must be valid"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_0
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->verifyMemberKey(Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to verify received Member key, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->MEMBER_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v0, v1, v7, v9}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/MemberKey;

    iget-object v1, v6, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->LINK_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v1, v2, v7, v9}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;

    iget-object v2, v6, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->KEM_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v2, v3, v7, v9}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/KemKey;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/BaseKey;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v11, v0, v13, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->createWithPQdecap([BLjava/lang/String;[BLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to agree key exchange, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v0, v6, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v0, v3, v7, v8}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;->importKey(Ljava/lang/Object;[B)Z

    move-result v0

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/LinkKey;->remove()V

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/KemKey;->remove()Z

    return v0
.end method

.method public importServiceKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to import service key. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v2, :cond_1

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string v2, "Fail to import service key. serviceKeyId cannot be null"

    invoke-static {v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to import service key. Keyid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " wrapped key cannot be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v4, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v3, v4, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v5, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v4, v5, p1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;

    invoke-virtual {v4, v3, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/ServiceKey;->importKey(Ljava/lang/Object;[B)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public setChunkSize(I)Z
    .locals 2

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Chunk size is updated to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/FabricCryptoHelper;->setChunkSize(I)Z

    move-result p0

    return p0
.end method

.method public setRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;->importKey(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public signChainMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to sign chain message. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->ATTEST_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;

    invoke-virtual {p0, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/AttestKey;->generateChainSignature([B)[B

    move-result-object p0

    return-object p0
.end method

.method public validateRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mKeyFactory:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;->getKeyInstance(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKey;->validateRecoveryData(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public verifyChainMessage([B[B[B)Z
    .locals 2

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 v1, 0x1

    aput-object p2, p0, v1

    const/4 v1, 0x2

    aput-object p3, p0, v1

    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to verify chain message. Arguments must be valid"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {p2, p1, p3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifySignature([B[B[B)Z

    move-result p0

    return p0
.end method

.method public verifyChainSigningKey([Ljava/security/cert/X509Certificate;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyChainSigningKey(Landroid/content/Context;[Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0
.end method

.method public verifyMemberKey(Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v2, 0x1

    aput-object p5, v0, v2

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/util/Utils;->checkArguments([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->TAG:Ljava/lang/String;

    const-string p1, "Fail to verify member key. Arguments cannot be null"

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStoreImpl;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/FabricCertUtil;->verifyMemberKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0
.end method
