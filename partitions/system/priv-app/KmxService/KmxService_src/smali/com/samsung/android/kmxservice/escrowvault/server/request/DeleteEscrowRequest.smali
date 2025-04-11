.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAgentVerificationCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "agentVerificationCert"
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

.field mSignRequest:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "signRequest"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;->mServiceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;->mSignRequest:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;->mSakCert:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;->mAgentVerificationCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgentVerificationCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;->mAgentVerificationCert:Ljava/lang/String;

    return-object p0
.end method

.method public getSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;->mSakCert:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public getSignRequest()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;->mSignRequest:Ljava/lang/String;

    return-object p0
.end method
