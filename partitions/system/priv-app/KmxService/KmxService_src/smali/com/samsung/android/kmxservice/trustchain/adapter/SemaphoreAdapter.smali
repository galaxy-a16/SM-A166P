.class public Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/d;


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::SemaphoreAdapter"


# instance fields
.field private final mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    return-void
.end method


# virtual methods
.method public acquireMutex([B)Z
    .locals 3

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->updateMutexFlag(ZLjava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result p1

    const-string v0, "TrustChain::SemaphoreAdapter"

    if-eqz p1, :cond_0

    const-string p0, "acquireMutex, succeed"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->getMutexFlag()Landroid/util/Pair;

    move-result-object p0

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "acquireMutex, already occupied by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;->getLockedBy()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "acquireMutex, failed"

    goto :goto_0

    :goto_1
    return p1
.end method

.method public getCurrentMutex()Lia/c;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->getMutexFlag()Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v0

    const-string v1, "TrustChain::SemaphoreAdapter"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getCurrentMutex, occupied by "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;->getLockedBy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "getCurrentMutex, failed"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;->getTransactionHash()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Lia/c;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;->getLockedBy()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lia/c;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method public releaseMutex()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->updateMutexFlag(ZLjava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "success"

    goto :goto_0

    :cond_0
    const-string p0, "fail"

    :goto_0
    const-string v0, "release Mutex, "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TrustChain::SemaphoreAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
