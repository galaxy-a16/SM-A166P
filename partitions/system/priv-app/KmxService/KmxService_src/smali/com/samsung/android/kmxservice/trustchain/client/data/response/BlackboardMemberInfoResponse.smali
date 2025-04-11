.class public Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isPeer:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "isPeer"
    .end annotation
.end field

.field private lastModifiedAt:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "lastModifiedAt"
    .end annotation
.end field

.field private latestBlockNo:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "latestBlockNo"
    .end annotation
.end field

.field private memberId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "memberId"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsPeer()Z
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "isPeer"
    .end annotation

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->isPeer:Z

    return p0
.end method

.method public getLastModifiedAt()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "lastModifiedAt"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->lastModifiedAt:Ljava/lang/String;

    return-object p0
.end method

.method public getLatestBlockNo()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "latestBlockNo"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->latestBlockNo:I

    return p0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "memberId"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->memberId:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "status"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->status:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[memberId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->memberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", latestBlockNo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->latestBlockNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPeer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->isPeer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifiedAt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->lastModifiedAt:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
