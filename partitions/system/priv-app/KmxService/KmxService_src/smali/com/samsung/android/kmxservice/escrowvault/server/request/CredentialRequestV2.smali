.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;
.super Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
.source "SourceFile"


# instance fields
.field mEncCredential:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encCredential"
    .end annotation
.end field

.field mMetaInfo:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "metaInfo"
    .end annotation
.end field

.field mSakCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "sakCert"
    .end annotation
.end field

.field mSignEncCredential:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "signEncCredential"
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

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;->mEncCredential:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;->mSignEncCredential:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;->mMetaInfo:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;->mSakCert:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;->mTaSignCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncCredential()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;->mEncCredential:Ljava/lang/String;

    return-object p0
.end method

.method public getMetaInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;->mMetaInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;->mSakCert:Ljava/lang/String;

    return-object p0
.end method

.method public getSignCredential()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;->mSignEncCredential:Ljava/lang/String;

    return-object p0
.end method

.method public getTaSignCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;->mTaSignCert:Ljava/lang/String;

    return-object p0
.end method
