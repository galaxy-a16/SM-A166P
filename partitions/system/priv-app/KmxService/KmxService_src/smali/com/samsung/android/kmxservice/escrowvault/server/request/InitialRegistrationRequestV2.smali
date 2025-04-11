.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;
.super Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
.source "SourceFile"


# instance fields
.field mDeviceName:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "deviceName"
    .end annotation
.end field

.field mEncCeRk:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encCeRk"
    .end annotation
.end field

.field mEncVS:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encVS"
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

.field mServiceName:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "serviceName"
    .end annotation
.end field

.field mSignEncCeRk:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "signEncCeRk"
    .end annotation
.end field

.field mTaSignCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "taSignCert"
    .end annotation
.end field

.field mVerifierType:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "verifierType"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mServiceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mDeviceName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mModelCode:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mEncVS:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mVerifierType:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mEncCeRk:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mSignEncCeRk:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mSakCert:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mTaSignCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getEncCeRk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mEncCeRk:Ljava/lang/String;

    return-object p0
.end method

.method public getEncVS()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mEncVS:Ljava/lang/String;

    return-object p0
.end method

.method public getModelCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mModelCode:Ljava/lang/String;

    return-object p0
.end method

.method public getSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mSakCert:Ljava/lang/String;

    return-object p0
.end method

.method public getSignEncCeRk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mSignEncCeRk:Ljava/lang/String;

    return-object p0
.end method

.method public getTaSignCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mTaSignCert:Ljava/lang/String;

    return-object p0
.end method

.method public getVerifierType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;->mVerifierType:Ljava/lang/String;

    return-object p0
.end method
