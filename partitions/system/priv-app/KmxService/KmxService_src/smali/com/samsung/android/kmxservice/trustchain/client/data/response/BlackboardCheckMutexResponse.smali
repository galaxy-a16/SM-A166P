.class public Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private expiredAt:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "expiredAt"
    .end annotation
.end field

.field private lockedBy:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "lockedBy"
    .end annotation
.end field

.field private transactionHash:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "transactionHash"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiredAt()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "expiredAt"
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;->expiredAt:J

    return-wide v0
.end method

.method public getLockedBy()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "lockedBy"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;->lockedBy:Ljava/lang/String;

    return-object p0
.end method

.method public getTransactionHash()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "transactionHash"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;->transactionHash:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[lockedBy : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;->lockedBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionHash : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;->transactionHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiredAt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;->expiredAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
