.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;
.super Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
.source "SourceFile"


# instance fields
.field mChallenge:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "challenge"
    .end annotation
.end field

.field mSakCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "sakCert"
    .end annotation
.end field

.field mSignTaEncPk:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "signTaEncPk"
    .end annotation
.end field

.field mTaEncPk:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "taEncPk"
    .end annotation
.end field

.field mTaSignCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "taSignCert"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;->mChallenge:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;->mSakCert:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;->mTaSignCert:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;->mSignTaEncPk:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;->mTaEncPk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;->mChallenge:Ljava/lang/String;

    return-object p0
.end method

.method public getSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;->mSakCert:Ljava/lang/String;

    return-object p0
.end method

.method public getSignTaEncPk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;->mSignTaEncPk:Ljava/lang/String;

    return-object p0
.end method

.method public getTaEncPk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;->mTaEncPk:Ljava/lang/String;

    return-object p0
.end method

.method public getTaSignCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;->mTaSignCert:Ljava/lang/String;

    return-object p0
.end method
