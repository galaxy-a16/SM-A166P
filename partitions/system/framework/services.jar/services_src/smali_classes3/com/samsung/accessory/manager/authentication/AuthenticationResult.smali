.class public Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public apiState:I

.field public isKeyChanged:Z

.field public isUrlExist:I

.field public mAuthenticationResult:Z

.field public mBundle:Landroid/os/Bundle;

.field public mByteArrayExtraData:[B

.field public mByteArrayManagerURI:[B

.field public mConnectivityType:I

.field public mExtraID:[B

.field public mReason:I

.field public mRequestPkg:Ljava/lang/String;

.field public mStringExtraData:Ljava/lang/String;

.field public mStringManagerURI:Ljava/lang/String;

.field public needKeyChange:Z

.field public publicKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mAuthenticationResult:Z

    const/16 v1, 0x5a

    .line 86
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 87
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 91
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    return-void
.end method


# virtual methods
.method public getApiState()I
    .locals 0

    .line 218
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    return p0
.end method

.method public getByteArrayExtraData()[B
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    return-object p0
.end method

.method public getByteArrayManagerURI()[B
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    return-object p0
.end method

.method public getConnectivityType()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    return p0
.end method

.method public getExtraId()[B
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    return-object p0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    return-object p0
.end method

.method public getReason()I
    .locals 0

    .line 202
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    return p0
.end method

.method public getRequestPackage()Ljava/lang/String;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getResultBundle()Landroid/os/Bundle;
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const-string v2, "extra"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getStringExtraData()Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    return-object p0
.end method

.method public getStringManagerURI()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    return-object p0
.end method

.method public isKeyChanged()Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    return p0
.end method

.method public needKeyChange()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    return p0
.end method

.method public setApiState(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    return-void
.end method

.method public setConnectivityType(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    return-void
.end method

.method public setExtraData([B)V
    .locals 2

    .line 133
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    if-eqz p1, :cond_0

    .line 136
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    const/4 p1, 0x1

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 139
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public setExtraId([B)V
    .locals 3

    if-eqz p1, :cond_2

    .line 151
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 152
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    array-length p1, p1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_3

    .line 154
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    const/16 v0, 0x15

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 156
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 158
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 160
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_0

    .line 163
    :cond_2
    sget-object p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setExtraId : data is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public setKeyChanged(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    return-void
.end method

.method public setManagerURI([B)V
    .locals 2

    .line 117
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    if-eqz p1, :cond_0

    .line 120
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    const/4 p1, 0x1

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 123
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public setReason(I)V
    .locals 2

    .line 206
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    const-string/jumbo v0, "reason"

    if-nez p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    .line 210
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    return-void

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setRequestPackage(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    return-void
.end method
