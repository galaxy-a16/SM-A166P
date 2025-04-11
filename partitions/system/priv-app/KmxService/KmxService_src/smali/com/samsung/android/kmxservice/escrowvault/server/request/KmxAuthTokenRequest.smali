.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAccountMcc:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "accountMcc"
    .end annotation
.end field

.field mAppCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "appCert"
    .end annotation
.end field

.field mAttestCaCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "attestCaCert"
    .end annotation
.end field

.field mModelName:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "modelName"
    .end annotation
.end field

.field mOsVersion:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "osVersion"
    .end annotation
.end field

.field mRegionMcc:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "regionMcc"
    .end annotation
.end field

.field mServiceName:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "serviceName"
    .end annotation
.end field

.field mUiVersion:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "uiVersion"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mAppCert:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mAttestCaCert:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mServiceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mOsVersion:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mUiVersion:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mAccountMcc:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mRegionMcc:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mModelName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountMcc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mAccountMcc:Ljava/lang/String;

    return-object p0
.end method

.method public getAppCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mAppCert:Ljava/lang/String;

    return-object p0
.end method

.method public getAttestCaCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mAttestCaCert:Ljava/lang/String;

    return-object p0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mModelName:Ljava/lang/String;

    return-object p0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mOsVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getRegionMcc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mRegionMcc:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public getUiVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mUiVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setAccountMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mAccountMcc:Ljava/lang/String;

    return-void
.end method

.method public setAppCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mAppCert:Ljava/lang/String;

    return-void
.end method

.method public setAttestCaCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mAttestCaCert:Ljava/lang/String;

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mModelName:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mOsVersion:Ljava/lang/String;

    return-void
.end method

.method public setRegionMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mRegionMcc:Ljava/lang/String;

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public setUiVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->mUiVersion:Ljava/lang/String;

    return-void
.end method
