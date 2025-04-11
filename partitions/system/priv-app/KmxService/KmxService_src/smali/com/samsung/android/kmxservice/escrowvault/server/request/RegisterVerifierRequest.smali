.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAgentVerificationCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "agentVerificationCert"
    .end annotation
.end field

.field mDeviceName:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "deviceName"
    .end annotation
.end field

.field mEncData:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encData"
    .end annotation
.end field

.field mIv:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "iv"
    .end annotation
.end field

.field mModelCode:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "modelCode"
    .end annotation
.end field

.field mSakCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "sakCert"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mDeviceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mModelCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mIv:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mEncData:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mSakCert:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mAgentVerificationCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgentVerificationCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mAgentVerificationCert:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getEncData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mEncData:Ljava/lang/String;

    return-object p0
.end method

.method public getIv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mIv:Ljava/lang/String;

    return-object p0
.end method

.method public getModelCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mModelCode:Ljava/lang/String;

    return-object p0
.end method

.method public getSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;->mSakCert:Ljava/lang/String;

    return-object p0
.end method
