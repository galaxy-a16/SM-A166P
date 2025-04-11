.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;
.super Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
.source "SourceFile"


# instance fields
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

.field mTaSignCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "taSignCert"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;->mServiceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;->mSignRequest:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;->mSakCert:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;->mTaSignCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;->mSakCert:Ljava/lang/String;

    return-object p0
.end method

.method public getSignRequest()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;->mSignRequest:Ljava/lang/String;

    return-object p0
.end method

.method public getTaSignCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;->mTaSignCert:Ljava/lang/String;

    return-object p0
.end method
