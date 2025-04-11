.class public Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;
.super Ljava/lang/Object;
.source "MsgParser.java"


# instance fields
.field public chipPubKey:[B

.field public keySize:I

.field public rootPriv_Sig_r:[B

.field public rootPriv_Sig_s:[B

.field public signatureSize:I

.field public signedRandVal_r:[B

.field public signedRandVal_s:[B

.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/msg/MsgParser;B)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->this$0:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p1, p2, 0xff

    const/16 p2, 0x33

    if-eq p1, p2, :cond_0

    const/16 p2, 0x55

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x28

    .line 91
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    const/16 p2, 0x2a

    .line 92
    iput p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    new-array p1, p1, [B

    .line 94
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    const/16 p1, 0x2a

    .line 96
    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    const/16 p1, 0x2a

    .line 97
    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    const/16 p1, 0x2a

    .line 98
    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    .line 99
    div-int/lit8 p2, p2, 0x2

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    :goto_0
    return-void
.end method


# virtual methods
.method public isValidCertificate(I)Z
    .locals 1

    .line 73
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    iget p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    add-int/2addr v0, p0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isValidSignature(I)Z
    .locals 0

    .line 80
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCertificateOfChip([B)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    iget v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v0, v3

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v0, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setSignatueOfRandomValue([B)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v1, v0, 0x2

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
