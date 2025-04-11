.class public Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::TAG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllDatabases(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->saInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;->clearTable()V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->dataPendedDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;->clearTable()V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->fabricInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;->clearTable()V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->memberInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;->clearTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "clearAllDatabases"

    const-string v1, "TrustChain::TAG"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static clearDataPended(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->dataPendedDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;->clearTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "clearDataPended"

    const-string v1, "TrustChain::TAG"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static clearFabricInfo(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->fabricInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;->clearTable()V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->memberInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;->clearTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "clearFabricInfo"

    const-string v1, "TrustChain::TAG"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static eraseDataPended(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->dataPendedDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "eraseDataPended"

    const-string v0, "TrustChain::TAG"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getDataPended(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->dataPendedDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "getDataPended"

    const-string v1, "TrustChain::TAG"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFabricIdFromSaInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->saInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;->getFabricId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "getFabricIdFromSaInfo"

    const-string v2, "TrustChain::TAG"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFabricInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;-><init>()V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->fabricInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->memberInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;->getAllMemberInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;

    new-instance v4, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    invoke-direct {v4, v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;->getAllMemberInfos(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;

    move-result-object p0

    new-instance p1, Landroid/util/Pair;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;Ljava/util/List;)V

    iget-wide v2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->updated_at:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "getFabricInfo"

    const-string v1, "TrustChain::TAG"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSaInfoFromSaInfo(Landroid/content/Context;)Lkotlin/Triple;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlin/Triple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/Triple;

    invoke-direct {p0, v0, v0, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->saInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    move-result-object p0

    new-instance v1, Lkotlin/Triple;

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;->getSaGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;->getSaMcc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;->getSaRegionMcc()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "getSaInfoFromSaInfo"

    const-string v2, "TrustChain::TAG"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lkotlin/Triple;

    invoke-direct {p0, v0, v0, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static insertDataPended(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->dataPendedDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/DataPendedEntity;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/DataPendedEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;->insert(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/DataPendedEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "insertDataPended"

    const-string p2, "TrustChain::TAG"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static insertMemberIdIntoSaInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->saInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;->getMemberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;->clearTable()V

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;->insert(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "insertMemberIdIntoSaInfo"

    const-string v0, "TrustChain::TAG"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static putFabricInfo(Landroid/content/Context;Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;)V
    .locals 14

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->fabricInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->memberInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    move-result-object p0

    new-instance v10, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getFabricID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getBlockCapacity()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getTransactionCapacity()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getFragmentSize()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getFabricPubKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getSyncPeriod()I

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getValidPeriod()I

    move-result v8

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getFtolerance()I

    move-result v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;-><init>(Ljava/lang/String;IIILjava/lang/String;III)V

    invoke-interface {v0, v10}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;->insert(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;)V

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getMemberInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    new-instance v13, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberNotiServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberRegInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getTrustLevel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getCertChain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getModelCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getStDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getSaDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getSecurityStatus()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getIsPeer()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    goto :goto_1

    :cond_1
    const-string v0, "false"

    :goto_1
    move-object v12, v0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v13}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;->insert(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "putFabricInfo"

    const-string v0, "TrustChain::TAG"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static updateFabricIdIntoSaInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->saInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;->updateFabricId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "updateFabricIdFromSaInfo"

    const-string p2, "TrustChain::TAG"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static updateMemberInfo(Landroid/content/Context;Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;)V
    .locals 13

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->memberInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;->deleteMember(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberNotiServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberRegInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getTrustLevel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getCertChain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getModelCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getStDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getSaDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getSecurityStatus()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getIsPeer()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    move-object v12, p1

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;->insert(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "updateMemberInfo"

    const-string v0, "TrustChain::TAG"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static updateSaInfoIntoSaInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->saInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;->updateSaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "updateSaInfoFromSaInfo"

    const-string p2, "TrustChain::TAG"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
