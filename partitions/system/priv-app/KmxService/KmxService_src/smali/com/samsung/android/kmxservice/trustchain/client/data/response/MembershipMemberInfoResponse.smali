.class public Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private certChain:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "certChain"
    .end annotation
.end field

.field private deviceType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "deviceType"
    .end annotation
.end field

.field private isPeer:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "isPeer"
    .end annotation
.end field

.field private memberID:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "memberID"
    .end annotation
.end field

.field private memberNotiServer:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "memberNotiServer"
    .end annotation
.end field

.field private memberRegInfo:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "memberRegInfo"
    .end annotation
.end field

.field private modelCode:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "modelCode"
    .end annotation
.end field

.field private saDeviceId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "saDeviceId"
    .end annotation
.end field

.field private securityStatus:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "securityStatus"
    .end annotation
.end field

.field private stDeviceId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "stDeviceId"
    .end annotation
.end field

.field private trustLevel:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "trustLevel"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->member_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberID:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->member_noti_server:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberNotiServer:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->member_reg_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberRegInfo:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->trust_level:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->trustLevel:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->cert_chain:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->certChain:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->device_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->deviceType:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->model_code:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->modelCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->stDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->stDeviceId:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->saDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->saDeviceId:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->securityStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->securityStatus:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->isPeer:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->isPeer:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberID:Ljava/lang/String;

    const-string p1, ""

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberNotiServer:Ljava/lang/String;

    if-nez p3, :cond_1

    move-object p3, p1

    :cond_1
    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberRegInfo:Ljava/lang/String;

    if-nez p4, :cond_2

    move-object p4, p1

    :cond_2
    iput-object p4, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->trustLevel:Ljava/lang/String;

    if-nez p5, :cond_3

    move-object p5, p1

    :cond_3
    iput-object p5, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->certChain:Ljava/lang/String;

    if-nez p6, :cond_4

    move-object p6, p1

    :cond_4
    iput-object p6, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->deviceType:Ljava/lang/String;

    if-nez p7, :cond_5

    move-object p7, p1

    :cond_5
    iput-object p7, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->modelCode:Ljava/lang/String;

    if-nez p8, :cond_6

    move-object p8, p1

    :cond_6
    iput-object p8, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->stDeviceId:Ljava/lang/String;

    if-nez p9, :cond_7

    move-object p9, p1

    :cond_7
    iput-object p9, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->saDeviceId:Ljava/lang/String;

    if-nez p10, :cond_8

    move-object p10, p1

    :cond_8
    iput-object p10, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->securityStatus:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->isPeer:Z

    return-void
.end method


# virtual methods
.method public getCertChain()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "certChain"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->certChain:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "deviceType"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->deviceType:Ljava/lang/String;

    return-object p0
.end method

.method public getIsPeer()Z
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "isPeer"
    .end annotation

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->isPeer:Z

    return p0
.end method

.method public getMemberID()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "memberID"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberID:Ljava/lang/String;

    return-object p0
.end method

.method public getMemberNotiServer()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "memberNotiServer"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberNotiServer:Ljava/lang/String;

    return-object p0
.end method

.method public getMemberRegInfo()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "memberRegInfo"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberRegInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getModelCode()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "modelCode"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->modelCode:Ljava/lang/String;

    return-object p0
.end method

.method public getSaDeviceId()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "saDeviceId"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->saDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityStatus()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "securityStatus"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->securityStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getStDeviceId()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "stDeviceId"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->stDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getTrustLevel()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "trustLevel"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->trustLevel:Ljava/lang/String;

    return-object p0
.end method

.method public isOperablePeer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->isPeer:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberRegInfo:Ljava/lang/String;

    const-string v0, "INVALID_PUSH_TOKEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{memberID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",memberNotiServer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberNotiServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",memberRegInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->memberRegInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",trustLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->trustLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",deviceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",modelCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->modelCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",stDeviceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->stDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",saDeviceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->saDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",securityStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->securityStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isPeer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->isPeer:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
