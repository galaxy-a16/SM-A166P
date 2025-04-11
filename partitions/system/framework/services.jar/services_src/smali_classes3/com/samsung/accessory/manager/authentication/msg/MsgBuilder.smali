.class public Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;
.super Ljava/lang/Object;
.source "MsgBuilder.java"


# instance fields
.field public mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

.field public mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field public randNum:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    return-void
.end method


# virtual methods
.method public getDataVerification()[B
    .locals 8

    .line 33
    new-instance v7, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/4 v1, 0x0

    const/16 v2, 0x76

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [B

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB[B)V

    iput-object v7, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 34
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object p0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getKeyChange()[B
    .locals 7

    .line 74
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/4 v1, 0x0

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 75
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object p0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getRandNum()[B
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    return-object p0
.end method

.method public getReadCoverId()[B
    .locals 7

    .line 23
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x22

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/16 v5, 0x12

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 24
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object p0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getReqExtra()[B
    .locals 7

    .line 43
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x22

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 44
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object p0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getReqFirmwareVersion()[B
    .locals 7

    .line 18
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 19
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object p0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getReqPubKey()[B
    .locals 7

    .line 10
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/4 v1, 0x0

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x52

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 11
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object p0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getReqUnified3rd()[B
    .locals 7

    .line 48
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 49
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object p0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getReqUrl()[B
    .locals 7

    .line 38
    new-instance v6, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v1, 0x54

    const/16 v2, 0x22

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBBB)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 39
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object p0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public makeRandomNumber()[B
    .locals 1

    .line 59
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 60
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->genRandom()[B

    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    return-object v0
.end method
