.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAgentSakCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "agentSakCert"
    .end annotation
.end field

.field mAgentVerificationCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "agentVerificationCert"
    .end annotation
.end field

.field mClientSakCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "clientSakCert"
    .end annotation
.end field

.field mClientVerificationCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "clientVerificationCert"
    .end annotation
.end field

.field mDeviceName:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "deviceName"
    .end annotation
.end field

.field mEncCredential:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encCredential"
    .end annotation
.end field

.field mEncSalt:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encSalt"
    .end annotation
.end field

.field mEncVerifier:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encVerifier"
    .end annotation
.end field

.field mEncVerifierEncKey:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encVerifierEncKey"
    .end annotation
.end field

.field mEncVerifierIv:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encVerifierIv"
    .end annotation
.end field

.field mModelCode:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "modelCode"
    .end annotation
.end field

.field mSignCredential:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "signCredential"
    .end annotation
.end field

.field mSignVerifier:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "signVerifier"
    .end annotation
.end field

.field mVerifierType:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "verifierType"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mDeviceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mModelCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mEncVerifierIv:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mEncVerifier:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mEncVerifierEncKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mVerifierType:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mSignVerifier:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mAgentVerificationCert:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mAgentSakCert:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mEncSalt:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mEncCredential:Ljava/lang/String;

    iput-object p12, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mSignCredential:Ljava/lang/String;

    iput-object p14, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mClientVerificationCert:Ljava/lang/String;

    iput-object p13, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mClientSakCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgentSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mAgentSakCert:Ljava/lang/String;

    return-object p0
.end method

.method public getAgentVerificationCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mAgentVerificationCert:Ljava/lang/String;

    return-object p0
.end method

.method public getClientSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mClientSakCert:Ljava/lang/String;

    return-object p0
.end method

.method public getClientVerificationCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mClientVerificationCert:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getEncCredential()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mEncCredential:Ljava/lang/String;

    return-object p0
.end method

.method public getEncSalt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mEncSalt:Ljava/lang/String;

    return-object p0
.end method

.method public getEncVerifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mEncVerifier:Ljava/lang/String;

    return-object p0
.end method

.method public getEncVerifierEncKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mEncVerifierEncKey:Ljava/lang/String;

    return-object p0
.end method

.method public getEncVerifierIv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mEncVerifierIv:Ljava/lang/String;

    return-object p0
.end method

.method public getModelCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mModelCode:Ljava/lang/String;

    return-object p0
.end method

.method public getSignCredential()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mSignCredential:Ljava/lang/String;

    return-object p0
.end method

.method public getSignVerifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mSignVerifier:Ljava/lang/String;

    return-object p0
.end method

.method public getVerifierType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;->mVerifierType:Ljava/lang/String;

    return-object p0
.end method
