.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAgentEncCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "agentEncCert"
    .end annotation
.end field

.field mClientPublicKey:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "secretA"
    .end annotation
.end field

.field mDeviceId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "deviceId"
    .end annotation
.end field

.field mSakCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "sakCert"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;->mDeviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;->mClientPublicKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;->mAgentEncCert:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;->mSakCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgentEncCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;->mAgentEncCert:Ljava/lang/String;

    return-object p0
.end method

.method public getClientPublicKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;->mClientPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;->mSakCert:Ljava/lang/String;

    return-object p0
.end method
