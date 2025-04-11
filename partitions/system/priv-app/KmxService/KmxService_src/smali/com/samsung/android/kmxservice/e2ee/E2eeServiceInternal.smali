.class Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHALLENGE_LENGTH:I = 0x8

.field private static final KMX_SERVICE_ENCRYPTION_STRING:Ljava/lang/String; = "serviceEncryption"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllowList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;",
            ">;"
        }
    .end annotation
.end field

.field private final mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

.field private final mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

.field private mChallengeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurServiceId:Ljava/lang/String;

.field private mCurUID:I

.field private mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

.field private mDeviceKeyId:Ljava/lang/String;

.field private mFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

.field private mFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

.field private mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

.field private mIsAlreadyValid:Z

.field private final mSakUidUtils:Lcom/samsung/android/kmxservice/common/util/SakUidUtils;

.field private mServiceKeyIdLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KmxE2eeService"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/LogTag;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mIsAlreadyValid:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mCurUID:I

    iput-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mCurServiceId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mChallengeSet:Ljava/util/HashSet;

    invoke-static {}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->getInstance()Lcom/samsung/android/kmxservice/common/util/SakUidUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mSakUidUtils:Lcom/samsung/android/kmxservice/common/util/SakUidUtils;

    new-instance v0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal$1;-><init>(Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->ACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    new-instance p2, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-direct {p2, p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private activateChainService()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v1, "activateChainService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.kmxservice.trustchain.CHAIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kmxservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    return-object p0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkChallenge([B)Z
    .locals 5

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mChallengeSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checked the challenge : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mChallengeSet:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "couldn\'t find the challenge"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private ensureDeviceKeyId()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "Error DataBase adapter"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "device_key_id"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private ensureFabricId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;->getGUID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isBlank()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "Error DataBase adapter"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->getInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->updateInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    :cond_4
    return-object v0
.end method

.method private ensureFabricKey()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "Error DataBase adapter"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "fabric_key_id"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private ensureFabricKeyStore()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ensureSAKUid()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    invoke-interface {v0}, Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;->getGUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "sak_uid"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ensureSAKUid sakUid :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isBlank()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mSakUidUtils:Lcom/samsung/android/kmxservice/common/util/SakUidUtils;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->getSakUid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "V_KMX_SAK_UID"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setSakUid(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_2
    return-object v0
.end method

.method private ensureValidPackage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mCurUID:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mCurServiceId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mIsAlreadyValid:Z

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mIsAlreadyValid:Z

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/common/util/PackageVerifier;->checkAllowedPackage(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "ensureValidPackage. checkAllowedPackage is valid"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->validPackageNames(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x194

    if-nez v1, :cond_4

    return v3

    :cond_4
    const/4 v1, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v1

    goto :goto_0

    :cond_5
    move v4, v2

    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getExistPackage(Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;

    move-result-object v5

    if-nez v5, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0, v5, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->checkSignature(Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v5}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->getServiceId()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    move v8, v7

    :goto_1
    if-ge v7, v6, :cond_8

    aget-object v8, v5, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iput-object v8, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mCurServiceId:Ljava/lang/String;

    move v8, v9

    goto :goto_2

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_1

    :cond_8
    :goto_2
    const-string p1, "| "

    if-eqz v4, :cond_a

    if-eqz v8, :cond_9

    if-eqz p2, :cond_9

    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mIsAlreadyValid:Z

    iput v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mCurUID:I

    iget-object p2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[1] VALID :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mIsAlreadyValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mCurUID:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "validSignature : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "validServiceId : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mIsAlreadyValid:Z

    return v3

    :cond_a
    if-eqz p2, :cond_b

    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mIsAlreadyValid:Z

    iput v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mCurUID:I

    iget-object p2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[2] VALID :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mIsAlreadyValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mCurUID:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p2, "validSignature is false"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mIsAlreadyValid:Z

    const/16 p0, 0x192

    return p0
.end method

.method private getAllowList()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "[getAllowList] Error DataBase adapter"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getAllowList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isBlank()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v2, "Ensure AllowList :"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getAllowPackageList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[BLOCK] Need to update allowList ! Current value: NULL |"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mAllowList:Ljava/util/HashMap;

    return-void
.end method

.method private getChallengeInternal()[B
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mChallengeSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "added the challenge : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getExistPackage(Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getAllowList()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mAllowList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFabricKeyIdInternal()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v1, ""

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "[getFabricKeyId] Error DataBase adapter"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "fabric_key_id"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;->getFabricKeyId()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private getServiceKeyId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyListInternal()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "V_KMX_KEY_ID"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "V_KMX_FABRIC_ID"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->containsKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "V_KMX_ERROR_CODE"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getServiceKeyId|2] error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getServiceKeyIdList()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v1, "[getServiceKeyIdList] Error DataBase adapter"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object p0

    const-string v3, "service_key_id_list"

    invoke-virtual {v1, p0, v3}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "V_KMX_SERVICE_KEY_ID_LIST"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0
.end method

.method private hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private validPackageNames(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public checkSignature(Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getExistPackage(Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "storedPackage : NULL"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_5

    array-length v2, v1

    if-gtz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v3, v1, v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;->getSignature()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length p2, p1

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_6

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureValidPackage :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    move v0, p0

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storedSign is null, packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p2, "[ensureValidPackage] Invalid signature :"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    return v0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "checkSignature NoSuchAlgorithmException error :"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "checkSignature NameNotFoundException error :"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public clearAll(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v2, "[ClearAll] F_Changed : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "[clearAll] Error DataBase adapter"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->deleteKeys(Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->removeAll()V

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public containsKey(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "V_KMX_KEY_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    const-string v7, "V_KMX_ERROR_CODE"

    if-nez v2, :cond_1

    const/16 p0, 0x6a

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->containsKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string p0, "containsKey exception error:"

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    move-object v4, v0

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    move p0, v8

    :goto_0
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v8, 0x69

    :goto_1
    invoke-virtual {v0, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    :goto_2
    const/16 p0, 0x12d

    :goto_3
    invoke-virtual {v0, v7, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public createFabricKey()Landroid/os/Bundle;
    .locals 8

    const-string v0, "V_KMX_FABRIC_KEY_ID"

    const-string v5, "V_KMX_ERROR_CODE"

    const-string v1, "[createFabricKey] fabricId :"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyIdInternal()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v4, "fabric_key_id"

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v4, :cond_3

    const/16 v0, 0x6a

    invoke-virtual {v7, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v7

    :cond_3
    if-nez v2, :cond_4

    const/16 v0, 0x12d

    invoke-virtual {v7, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v7

    :cond_4
    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->createFabricKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setFabricKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {v7, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x67

    invoke-virtual {v7, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string p0, "createFabricKey exception error :"

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v7
.end method

.method public createServiceKey(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string v0, "createServiceKey exception error :"

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "V_KMX_SERVICE_ID_LIST"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    const-string v4, "V_KMX_ERROR_CODE"

    if-nez v3, :cond_1

    const/16 p0, 0x6a

    :goto_0
    invoke-virtual {v2, v4, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_1
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyIdInternal()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v5, "fabric_key_id"

    invoke-virtual {v3, v1, v5}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    const/16 p0, 0x12e

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_6

    :cond_6
    const/16 v3, 0x67

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyListInternal()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->makeServiceKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CreateServiceKey candidate cnt :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_8
    const-string v7, "0"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {p1, v1, v5}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->createServiceKey(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CreateServiceKey Result :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :goto_4
    if-eqz v6, :cond_b

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[createServiceKey] Fail :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v1, "[createServiceKey] Error DataBase adapter"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {v2, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_d
    new-instance v5, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object p1

    sget v6, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    invoke-direct {v5, p1, v6}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v6, "service_key_id_list"

    iget-object v7, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-direct {p0, v7}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7, v5}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J

    const/4 p1, 0x0

    invoke-virtual {v2, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "V_KMX_SERVICE_KEY_ID_LIST"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, p1, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v2

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v1, "[createServiceKey] Fail 1-1 :"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/security/fabric/crypto/FabricCryptoException;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x6

    invoke-virtual {v2, v4, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_5
    return-object v2

    :cond_f
    :goto_6
    const/4 p0, 0x4

    goto/16 :goto_0

    :cond_10
    :goto_7
    const/16 p0, 0x12d

    goto/16 :goto_0
.end method

.method public decryptData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "V_KMX_SERVICE_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V_KMX_PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v8, "V_KMX_ERROR_CODE"

    if-nez v3, :cond_0

    const/16 p0, 0x69

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureValidPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x194

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v1, :cond_3

    const/16 p0, 0x6a

    :goto_0
    invoke-virtual {v10, v8, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v10

    :cond_3
    const/16 v1, 0x12d

    if-nez v0, :cond_4

    invoke-virtual {v10, v8, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v10

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "V_KMX_ENCRYPTED_BYTE_ARRAY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {v1, v0, v3, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->decryptData(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    const-string v0, "V_KMX_DECRYPTED_DATA"

    invoke-virtual {v10, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 p1, 0x0

    invoke-virtual {v10, v8, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v4, p1

    iget-object v6, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string p0, "decryptData exception error :"

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x6

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_1
    return-object v10

    :cond_6
    :goto_2
    invoke-virtual {v10, v8, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v10
.end method

.method public decryptFile(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const-string v0, "V_KMX_SERVICE_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V_KMX_PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "V_KMX_FILE_IN_URI"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "V_KMX_FILE_OUT_URI"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v9, "V_KMX_ERROR_CODE"

    if-nez v4, :cond_0

    const/16 p0, 0x69

    invoke-virtual {v11, v9, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureValidPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x194

    invoke-virtual {v11, v9, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v1, :cond_3

    const/16 p0, 0x6a

    invoke-virtual {v11, v9, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_3
    const/16 v1, 0x12d

    if-nez v0, :cond_4

    invoke-virtual {v11, v9, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_4
    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 p1, 0x4

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v0, v4, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->decryptFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_0

    :cond_8
    const/16 p1, 0xca

    :goto_0
    invoke-virtual {v11, v9, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v5, p1

    iget-object v7, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string p0, "decryptFile exception error :"

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x6

    move-object v8, v11

    invoke-static/range {v5 .. v10}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_1
    return-object v11

    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[encryptFile] Need to check outUri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v9, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_a
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[encryptFile] Need to check URI :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v9, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_b
    :goto_4
    invoke-virtual {v11, v9, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11
.end method

.method public deleteKey(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string v0, " |"

    const-string v1, "[deleteKey] keyId :"

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v3, "V_KMX_KEY_ID"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "V_KMX_ERROR_CODE"

    if-nez p1, :cond_1

    const/4 p0, 0x4

    invoke-virtual {v9, v7, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v9

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v3, :cond_2

    const/16 p0, 0x6a

    invoke-virtual {v9, v7, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v9

    :cond_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyIdInternal()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "V_KMX_FABRIC_KEY_ID"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setFabricKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->deleteKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    const/16 p1, 0x68

    :goto_0
    invoke-virtual {v9, v7, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception p1

    move-object v3, p1

    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string p0, "deleteKey exception error :"

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x6

    move-object v6, v9

    invoke-static/range {v3 .. v8}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    return-object v9

    :cond_6
    :goto_1
    const/16 p0, 0x12d

    invoke-virtual {v9, v7, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v9
.end method

.method public deleteKeys(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const-string v0, "DeleteKeys FAIL :"

    const-string v1, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    const-string v6, "V_KMX_ERROR_CODE"

    if-nez v2, :cond_1

    const/16 p0, 0x6a

    invoke-virtual {v1, v6, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "[deleteKeys] Error DataBase adapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-virtual {v1, v6, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {v2, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->deleteKeys(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    new-instance v3, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;

    sget v4, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v5, "service_key_id_list"

    iget-object v7, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-direct {p0, v7}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7, v3}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;

    sget v5, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    invoke-direct {v4, p1, v5}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v7, "device_key_id"

    const-string v8, ""

    invoke-virtual {v5, v7, v8, v4}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "V_KMX_FABRIC_KEY_ID"

    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v5, "DeleteKeys"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setFabricKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteKeys] Key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {v1, v6, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | Empty"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x68

    invoke-virtual {v1, v6, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->removeAll()V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    move-object v2, p1

    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string p0, "deleteKeys exception error :"

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x6

    move-object v5, v1

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    return-object v1

    :cond_7
    :goto_3
    const/16 p0, 0x12d

    invoke-virtual {v1, v6, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public deleteServiceKey(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    const-string v5, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_1

    const/16 p0, 0x6a

    invoke-virtual {v7, v5, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v7

    :cond_1
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v1, "V_KMX_SERVICE_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[deleteServiceKey] Error DataBase adapter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-virtual {v7, v5, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v7

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyListInternal()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    invoke-direct {p1, v2, v3}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v3, "service_key_id_list"

    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-direct {p0, v4}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->deleteKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    const/16 p1, 0x68

    :goto_1
    invoke-virtual {v7, v5, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v7

    :cond_7
    :goto_2
    const/16 p1, 0x131

    invoke-virtual {v7, v5, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    move-object v1, p1

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string p0, "deleteServiceKey exception error :"

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    return-object v7

    :cond_8
    :goto_3
    const/16 p0, 0x12d

    invoke-virtual {v7, v5, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v7
.end method

.method public encryptData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "V_KMX_SERVICE_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V_KMX_PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v8, "V_KMX_ERROR_CODE"

    if-nez v3, :cond_0

    const/16 p0, 0x69

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureValidPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x194

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_2
    const-string v0, "V_KMX_PLAIN_BYTE_ARRAY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_3

    const/16 p0, 0x6a

    :goto_0
    invoke-virtual {v10, v8, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v10

    :cond_3
    const/16 v0, 0x12d

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {v0, v4, v3, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->encryptData(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    const-string v0, "V_KMX_ENCRYPTED_DATA"

    invoke-virtual {v10, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 p1, 0x0

    invoke-virtual {v10, v8, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v4, p1

    iget-object v6, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string p0, "encryptData exception error :"

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x6

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_1
    return-object v10

    :cond_6
    :goto_2
    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v10

    :cond_7
    :goto_3
    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v10
.end method

.method public encryptFile(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const-string v0, "V_KMX_SERVICE_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V_KMX_PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "V_KMX_FILE_IN_URI"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "V_KMX_FILE_OUT_URI"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v9, "V_KMX_ERROR_CODE"

    if-nez v4, :cond_0

    const/16 p0, 0x69

    invoke-virtual {v11, v9, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureValidPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x194

    invoke-virtual {v11, v9, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_2
    const/16 v1, 0x12d

    if-nez v0, :cond_3

    invoke-virtual {v11, v9, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_3
    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x4

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v0, v4, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->encryptFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_0

    :cond_7
    const/16 p1, 0xc9

    :goto_0
    invoke-virtual {v11, v9, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v5, p1

    iget-object v7, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string p0, "encryptFile exception error :"

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x6

    move-object v8, v11

    invoke-static/range {v5 .. v10}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_1
    return-object v11

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[encryptFile] Need to check outUri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v9, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[encryptFile] Need to check URI :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v9, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_a
    :goto_4
    invoke-virtual {v11, v9, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11
.end method

.method public exportFabricKey(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, " |"

    const-string v3, "[exportFabricKey] deviceId :"

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyIdInternal()Ljava/lang/String;

    move-result-object v4

    const-string v8, "V_KMX_ERROR_CODE"

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_6

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v5, "fabric_key_id"

    invoke-virtual {v4, v12, v5}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    move-object v13, v4

    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureDeviceKeyId()Z

    :cond_5
    const-string v4, "V_KMX_SAK_UID"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v4, :cond_6

    const/16 v0, 0x6a

    goto/16 :goto_7

    :cond_6
    if-nez v13, :cond_7

    const/16 v0, 0x12e

    goto/16 :goto_7

    :cond_7
    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-nez v4, :cond_8

    const/16 v0, 0x132

    goto/16 :goto_7

    :cond_8
    const-string v4, "KMX_MEMBER_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    const-string v4, "KMX_TARGET_SIGNATURE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    const-string v4, "KMX_TARGET_CERT_CHAIN"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v4, v0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    if-eqz v4, :cond_9

    check-cast v0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    iget-object v0, v0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;->mCertChain:[Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v18, v0

    if-eqz v16, :cond_a

    if-eqz v17, :cond_a

    if-eqz v18, :cond_a

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    iget-object v14, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual/range {v11 .. v18}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->exportFabricKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;)[B

    move-result-object v0

    const-string v2, "KMX_INPUT_WRAPPED_FABRIC_KEY"

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    iget-object v1, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x66

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v0

    iget-object v6, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "exportFabricKey exception error :"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x6

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    goto :goto_5

    :cond_a
    const-string v0, "exportFabricKey error. memberKey "

    iget-object v2, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    if-nez v16, :cond_b

    const-string v3, "exportFabricKey error. memberKey NULL "

    goto :goto_1

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    if-nez v17, :cond_c

    const-string v3, "exportFabricKey error. signature NULL "

    goto :goto_2

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exportFabricKey error. signature "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    if-nez v18, :cond_d

    const-string v0, "exportFabricKey error. certChain NULL "

    goto :goto_3

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    :goto_4
    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_5
    return-object v10

    :cond_e
    :goto_6
    const/16 v0, 0x12d

    :goto_7
    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v10
.end method

.method public exportFabricKeyPQC(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, " |"

    const-string v3, "[exportFabricKey] deviceId :"

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyIdInternal()Ljava/lang/String;

    move-result-object v4

    const-string v8, "V_KMX_ERROR_CODE"

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_9

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v5, "fabric_key_id"

    invoke-virtual {v4, v12, v5}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    move-object v13, v4

    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureDeviceKeyId()Z

    :cond_5
    const-string v4, "V_KMX_SAK_UID"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v4, :cond_6

    const/16 v0, 0x6a

    :goto_0
    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v10

    :cond_6
    if-nez v13, :cond_7

    const/16 v0, 0x12e

    goto :goto_0

    :cond_7
    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-nez v4, :cond_8

    const/16 v0, 0x132

    goto :goto_0

    :cond_8
    const-string v4, "KMX_MEMBER_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    const-string v4, "KMX_TARGET_SIGNATURE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    const-string v4, "KMX_TARGET_CERT_CHAIN"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    instance-of v5, v4, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    if-eqz v5, :cond_9

    check-cast v4, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    iget-object v4, v4, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;->mCertChain:[Ljava/security/cert/X509Certificate;

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v18, v4

    const-string v4, "KMX_ENCAP_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v19

    const-string v4, "KMX_ENCAP_SIGNATURE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v20

    if-eqz v16, :cond_a

    if-eqz v17, :cond_a

    if-eqz v18, :cond_a

    if-eqz v19, :cond_a

    if-eqz v20, :cond_a

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    iget-object v14, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual/range {v11 .. v20}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->exportFabricKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B[B)Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;

    move-result-object v0

    const-string v2, "KMX_INPUT_WRAPPED_FABRIC_KEY"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;->getWrappedFabricKey()[B

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "KMX_PQC_CIPHER"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyInfoPQC;->getPqcCipher()[B

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    iget-object v1, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x66

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v4, v0

    iget-object v6, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "exportFabricKey exception error :"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x6

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    goto/16 :goto_8

    :cond_a
    iget-object v0, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    if-nez v16, :cond_b

    const-string v2, "exportFabricKeyPQC error. memberKey NULL "

    goto :goto_2

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exportFabricKeyPQC error. memberKey "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    if-nez v17, :cond_c

    const-string v2, "exportFabricKeyPQC error. signature NULL "

    goto :goto_3

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exportFabricKeyPQC error. signature "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    if-nez v18, :cond_d

    const-string v2, "exportFabricKeyPQC error. certChain NULL "

    goto :goto_4

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exportFabricKeyPQC error. certChain "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    if-nez v19, :cond_e

    const-string v2, "exportFabricKeyPQC error. encapKey NULL "

    goto :goto_5

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exportFabricKeyPQC error. encapKey "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    if-nez v20, :cond_f

    const-string v1, "exportFabricKeyPQC error. encapSignature NULL "

    goto :goto_6

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exportFabricKeyPQC error. encapSignature "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    :goto_7
    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_8
    return-object v10

    :cond_10
    :goto_9
    const/16 v0, 0x12d

    goto/16 :goto_0
.end method

.method public exportServiceKey(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string v4, "V_KMX_ERROR_CODE"

    const-string v0, "exportServiceKey challenge length : "

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v5, 0x6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyIdInternal()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v7, "fabric_key_id"

    invoke-virtual {v2, v1, v7}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v7, :cond_4

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "exportServiceKey fabricKeystore error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6a

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_4
    if-nez v2, :cond_5

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "exportServiceKey fabricKeyId error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x12e

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_5
    const-string v7, "V_KMX_SERVICE_KEY_ID_LIST"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "KMX_CERT_CHAIN"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    instance-of v9, v8, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    if-eqz v9, :cond_6

    check-cast v8, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    iget-object v8, v8, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;->mCertChain:[Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_6
    move-object v8, v6

    :goto_0
    if-nez v8, :cond_7

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {p1, v1, v2, v7}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->exportServiceKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    goto :goto_2

    :cond_7
    const-string v2, "KMX_CHALLENGE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_9

    array-length v2, p1

    const/16 v9, 0x8

    if-ne v2, v9, :cond_8

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->checkChallenge([B)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "exportServiceKey checkChallenge error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x196

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v2, "exportServiceKey challenge is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {v0, v1, v7, v8, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->exportServiceKey(Ljava/lang/String;Ljava/util/List;[Ljava/security/cert/X509Certificate;[B)Ljava/util/Map;

    move-result-object p1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyListInternal()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "[exportServiceKey] Error FK ExportSKey result is NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    const-string p1, "V_KMX_SERVICE_KEY_LISTS"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 p1, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_4
    return-object v3

    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "exportServiceKey fabricId error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x12d

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[exportServiceKey] NoSuchMethodException - secure import exception :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exportServiceKey for secure import exception :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v0, p1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string p0, "exportServiceKey exception error :"

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_6
    return-object v6
.end method

.method public getAllowPackageList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/gson/b;

    invoke-direct {v4}, Lcom/google/gson/b;-><init>()V

    const-class v5, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;

    invoke-virtual {v4, v5, v3}, Lcom/google/gson/b;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/sdk/e2ee/data/PackageVO;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAllowPackageList exception error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChallenge()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getChallengeInternal()[B

    move-result-object p0

    const-string v1, "KMX_CHALLENGE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public getDeviceKeyId()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    const-string v2, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v1, "[getDeviceKeyId] Error DataBase adapter"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_key_id"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v3, "[getDeviceKeyId|1] deviceKeyId is null"

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[getDeviceKeyId|2] :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "V_KMX_DEVICE_KEY_ID"

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getFabricId()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v1, "[getFabricId] Error DataBase adapter"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;->getGUID()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/16 v3, 0x12d

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "V_KMX_FABRIC_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getFabricId] :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getFabricKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyIdInternal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->getInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->updateInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "V_KMX_KEY_ID"

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->containsKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "V_KMX_ERROR_CODE"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "V_KMX_FABRIC_KEY_ID"

    if-nez p1, :cond_2

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[getFabricKeyId] error : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {v0, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getMemberKey()Landroid/os/Bundle;
    .locals 10

    const-string v0, "|"

    const-string v1, "getMemberKey exception error :"

    const-string v2, "[getDeviceKey|1] FabricId:"

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureSAKUid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureDeviceKeyId()Z

    :cond_2
    const-string v7, "V_KMX_ERROR_CODE"

    if-nez v3, :cond_3

    const/16 p0, 0x12d

    goto/16 :goto_2

    :cond_3
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-nez v5, :cond_5

    const/16 p0, 0x132

    goto/16 :goto_2

    :cond_5
    const/16 v5, 0x67

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->getMemberKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Triple;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {v9, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v9

    :cond_6
    const-string v2, "KMX_MEMBER_KEY"

    invoke-virtual {v0}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "KMX_SIGNATURE"

    invoke-virtual {v0}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    new-instance v2, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    invoke-direct {v2, v0}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;-><init>([Ljava/security/cert/X509Certificate;)V

    const-string v0, "KMX_CERT_CHAIN"

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x6

    move-object v6, v9

    invoke-static/range {v3 .. v8}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_0
    return-object v9

    :cond_7
    :goto_1
    const/16 p0, 0x12f

    :goto_2
    invoke-virtual {v9, v7, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v9
.end method

.method public getMemberKeyPQC()Landroid/os/Bundle;
    .locals 10

    const-string v0, "|"

    const-string v1, "getMemberKeyPQEDP exception error :"

    const-string v2, "[getDeviceKey|1] FabricId:"

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureSAKUid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureDeviceKeyId()Z

    :cond_2
    const-string v7, "V_KMX_ERROR_CODE"

    if-nez v3, :cond_3

    const/16 p0, 0x12d

    goto/16 :goto_2

    :cond_3
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-nez v5, :cond_5

    const/16 p0, 0x132

    goto/16 :goto_2

    :cond_5
    const/16 v5, 0x67

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->getMemberKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {v9, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v9

    :cond_6
    const-string v2, "KMX_MEMBER_KEY"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->getMemberKey()[B

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "KMX_SIGNATURE"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->getSignature()[B

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    invoke-direct {v3, v2}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;-><init>([Ljava/security/cert/X509Certificate;)V

    const-string v2, "KMX_CERT_CHAIN"

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "KMX_ENCAP_KEY"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->getEncapKey()[B

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "KMX_ENCAP_SIGNATURE"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/MemberKeyInfoPQC;->getEncapKeySignature()[B

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    invoke-virtual {v9, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x6

    move-object v6, v9

    invoke-static/range {v3 .. v8}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_0
    return-object v9

    :cond_7
    :goto_1
    const/16 p0, 0x12f

    :goto_2
    invoke-virtual {v9, v7, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v9
.end method

.method public getRecoveryData()Landroid/os/Bundle;
    .locals 8

    const-string v0, "[Request RecoveryData] "

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v1

    const-string v5, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_1

    const/16 p0, 0x12d

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyIdInternal()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v3, "fabric_key_id"

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v3, :cond_4

    const/16 p0, 0x6a

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    const/16 p0, 0x12e

    :goto_0
    invoke-virtual {v7, v5, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v7

    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->getRecoveryData(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "KMX_RECOVERY_CODE"

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "KMX_ESCROW_DATA"

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    invoke-virtual {v7, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string p0, "getRecoveryData exception error :"

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_1
    return-object v7
.end method

.method public getServiceKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "V_KMX_SERVICE_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyListInternal()V

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    const/16 v4, 0x131

    const/4 v5, 0x0

    const-string v6, "V_KMX_SERVICE_KEY_ID"

    const-string v7, "V_KMX_ERROR_CODE"

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "V_KMX_KEY_ID"

    invoke-virtual {v3, v8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->containsKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v7, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string p1, "KMX_CHALLENGE"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->activateChainService()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getServiceKeyId|1] error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    return-object v0
.end method

.method public getServiceKeyIdList(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "[getServiceKeyIdList] Error DataBase adapter"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v1, "service_key_id_list"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "V_KMX_SERVICE_KEY_ID_LIST"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "INVALID GUID!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceKeyListInternal()V
    .locals 5

    const-string v0, "getAllowList :"

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyIdList()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "V_KMX_SERVICE_KEY_ID_LIST"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getServiceKeyListInternal exception error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public importFabricKey(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "[2]importFabricKey :"

    const-string v3, "[1]importFabricKey :"

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v12

    const-string v8, "V_KMX_ERROR_CODE"

    if-nez v12, :cond_1

    const/16 v0, 0x12d

    goto/16 :goto_4

    :cond_1
    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureDeviceKeyId()Z

    :cond_3
    const-string v4, "V_KMX_FABRIC_KEY_ID"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "V_KMX_SAK_UID"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v6, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v6, :cond_4

    const/16 v0, 0x6a

    goto/16 :goto_4

    :cond_4
    const-string v6, "KMX_MEMBER_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    const-string v6, "KMX_SIGNATURE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    const-string v6, "KMX_INPUT_WRAPPED_FABRIC_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v19

    const-string v6, "KMX_TARGET_CERT_CHAIN"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v6, v0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    if-eqz v6, :cond_5

    check-cast v0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    iget-object v0, v0, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;->mCertChain:[Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v18, v0

    if-eqz v16, :cond_9

    if-eqz v17, :cond_9

    if-eqz v19, :cond_9

    if-nez v18, :cond_6

    goto/16 :goto_3

    :cond_6
    :try_start_0
    iget-object v11, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    iget-object v14, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    move-object v13, v5

    invoke-virtual/range {v11 .. v19}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->importFabricKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B)Z

    move-result v0

    iget-object v6, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " /"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    invoke-virtual {v10, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setFabricKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_7
    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    const/16 v0, 0x65

    :goto_1
    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "importFabricKey KeyStoreException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    iget-object v6, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "importFabricKey exception error :"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x6

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_2
    return-object v10

    :cond_9
    :goto_3
    const/4 v0, 0x4

    :goto_4
    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v10
.end method

.method public importFabricKeyPQC(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "[2]importFabricKeyPQC :"

    const-string v3, "[1]importFabricKeyPQC :"

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v12

    const-string v8, "V_KMX_ERROR_CODE"

    if-nez v12, :cond_1

    const/16 v0, 0x12d

    :goto_0
    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v10

    :cond_1
    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureDeviceKeyId()Z

    :cond_3
    const-string v4, "V_KMX_FABRIC_KEY_ID"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "V_KMX_SAK_UID"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v6, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v6, :cond_4

    const/16 v0, 0x6a

    goto :goto_0

    :cond_4
    const-string v6, "KMX_MEMBER_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    const-string v6, "KMX_SIGNATURE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    const-string v6, "KMX_INPUT_WRAPPED_FABRIC_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v19

    const-string v6, "KMX_TARGET_CERT_CHAIN"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    instance-of v7, v6, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    if-eqz v7, :cond_5

    check-cast v6, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;

    iget-object v6, v6, Lcom/samsung/android/kmxservice/sdk/e2ee/data/KmxCertChainData;->mCertChain:[Ljava/security/cert/X509Certificate;

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v18, v6

    const-string v6, "KMX_PQC_CIPHER"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v20

    if-eqz v16, :cond_9

    if-eqz v17, :cond_9

    if-eqz v19, :cond_9

    if-eqz v18, :cond_9

    if-nez v20, :cond_6

    goto :goto_4

    :cond_6
    :try_start_0
    iget-object v11, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    iget-object v14, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    move-object v13, v5

    invoke-virtual/range {v11 .. v20}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->importFabricKeyPQC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[Ljava/security/cert/X509Certificate;[B[B)Z

    move-result v0

    iget-object v6, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " /"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    invoke-virtual {v10, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setFabricKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_7
    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    const/16 v0, 0x65

    :goto_2
    invoke-virtual {v10, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v4, v0

    iget-object v6, v1, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "importFabricKeyPQC exception error :"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x6

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_3
    return-object v10

    :cond_9
    :goto_4
    const/4 v0, 0x4

    goto/16 :goto_0
.end method

.method public importServiceKey(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v0

    const-string v4, "V_KMX_ERROR_CODE"

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isBlank()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyIdInternal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "fabric_key_id"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v2, :cond_4

    const/16 p0, 0x6a

    goto/16 :goto_4

    :cond_4
    if-nez v1, :cond_5

    const/16 p0, 0x12e

    goto/16 :goto_4

    :cond_5
    const-string v2, "V_KMX_SERVICE_KEY_LISTS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    const-string v3, "V_KMX_SERVICE_ID_LIST"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_b

    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_b

    new-instance v3, Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v7, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[importServiceKey|IdList] Key = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", Value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {v5, v0, v1, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->importServiceKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyListInternal()V

    const/4 v1, 0x1

    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "[importServiceKey] Error FK ImportSKey result is NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v6

    :cond_7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    if-nez v0, :cond_a

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v0, "[importServiceKey] Error DataBase adapter"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v6

    :cond_a
    new-instance v1, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "service_key_id_list"

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mServiceKeyIdLists:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->hashMapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J

    const-string v0, "V_KMX_SERVICE_KEY_ID_LIST"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 p1, 0x0

    invoke-virtual {v6, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string p0, "importServiceKey exception error :"

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x6

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :cond_b
    :goto_2
    return-object v6

    :cond_c
    :goto_3
    const/16 p0, 0x12d

    :goto_4
    invoke-virtual {v6, v4, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v6
.end method

.method public isValidPackage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "V_KMX_SERVICE_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V_KMX_PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureValidPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "V_KMX_ERROR_CODE"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public makeServiceKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyIdInternal()Ljava/lang/String;

    move-result-object p0

    const-string v0, "serviceEncryption"

    invoke-static {p1, p0, v0}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "V_KMX_DEVICE_KEY_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setDeviceKeyId|1] :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v1, "V_KMX_ERROR_CODE"

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "[setDeviceKeyId] Error DataBase adapter"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance v2, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object p1

    sget v3, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v3, "device_key_id"

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDeviceKeyId:Ljava/lang/String;

    invoke-virtual {p1, v3, p0, v2}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public setFabricId(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "[setFabricId] Error DataBase adapter"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[setFId] :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->getInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->updateInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->insertFabricId(Ljava/lang/String;)J

    const/4 p0, 0x0

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setFabricKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "V_KMX_FABRIC_KEY_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->getInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->updateInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "[setFabricKeyId] Error DataBase adapter"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    new-instance v3, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    invoke-direct {v3, v1, v4}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v1, "fabric_key_id"

    invoke-virtual {p0, v1, p1, v3}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J

    const/4 p0, 0x0

    goto :goto_1
.end method

.method public setRecoveryData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricId()Ljava/lang/String;

    move-result-object v0

    const-string v7, "V_KMX_ERROR_CODE"

    if-nez v0, :cond_1

    const/16 p0, 0x12d

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v1, :cond_2

    const/16 p0, 0x6a

    :goto_0
    invoke-virtual {v6, v7, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v6

    :cond_2
    const-string v1, "KMX_RECOVERY_CODE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KMX_ESCROW_DATA"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v8, "V_KMX_FABRIC_KEY_ID"

    invoke-virtual {p1, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {v3, v0, p1, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->setRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setRecoveryData exception error :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x6

    move-object v3, v6

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    move v0, v9

    :goto_1
    if-eqz v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v8, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setFabricKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v9, 0xcc

    :goto_2
    invoke-virtual {v6, v7, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v6
.end method

.method public setSARegistrationState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "V_KMX_ERROR_CODE"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "[setSARegistrationState] Error DataBase adapter"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    const-string v2, "V_KMX_SA_STATE"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v2, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v3, "sa_state"

    invoke-virtual {p0, v3, p1, v2}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateItem(Ljava/lang/String;ILcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x4

    goto :goto_0
.end method

.method public setSakUid(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "V_KMX_SAK_UID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v2, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[setSakUid] Error DataBase adapter "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance v3, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    invoke-direct {v3, v1, v4}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v1, "sak_uid"

    invoke-virtual {p0, v1, p1, v3}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p0, 0x12f

    :goto_1
    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public updateAllowList(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const/4 v2, 0x1

    const-string v3, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "Error DataBase adapter"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const-string v1, "V_KMX_ALLOW_PACKAGE_LIST"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "KMX_SIGNATURE"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v6, "updateAllowList with Signature"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "V_KMX_SIGNED_ALLOW_PACKAGE_LIST"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string p1, "signedAllowList allowListJson is null !"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    invoke-virtual {v0, v3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/common/tool/CertificateManager;

    move-result-object v5

    const-string v6, "pcfg.crt"

    invoke-virtual {v5, v6}, Lcom/samsung/android/kmxservice/common/tool/CertificateManager;->getCertification(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    const-string v6, "SHA384withECDSA"

    invoke-static {p1, v4, v5, v6}, Lcom/samsung/android/kmxservice/common/tool/CryptoHelper;->verifySignature([B[BLjava/security/PublicKey;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v1, "signedAllowList signature is invalid"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "signedAllowList signature : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_2

    const-string v1, "NULL"

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    const-string v4, "signedAllowList signature is valid"

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance p1, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricId()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    invoke-direct {p1, v4, v5}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mDBAdapter:Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    const-string v5, "allow_list"

    invoke-virtual {v4, v5, v1, p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long p1, v4, v6

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    if-gez p1, :cond_5

    const-string p1, "Fail to update allowlist !"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Update AllowList Success :: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {v0, v3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    return-object v0
.end method

.method public validateRecoveryData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->ensureFabricKeyStore()Z

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    const-string v7, "V_KMX_ERROR_CODE"

    if-nez v1, :cond_1

    const/16 p0, 0x6a

    goto :goto_3

    :cond_1
    const-string v1, "V_KMX_FABRIC_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KMX_RECOVERY_CODE"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KMX_ESCROW_DATA"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "V_KMX_FABRIC_KEY_ID"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    invoke-virtual {v4, v1, p1, v2, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->validateRecoveryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p0
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    iget-object v3, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string p0, "validateRecoveryData exception error :"

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    move-object v4, v0

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/n;->u(Lcom/samsung/security/fabric/crypto/FabricCryptoException;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    move p0, v8

    :goto_0
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v8, 0x193

    :goto_1
    invoke-virtual {v0, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    :goto_2
    const/16 p0, 0x12d

    :goto_3
    invoke-virtual {v0, v7, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
