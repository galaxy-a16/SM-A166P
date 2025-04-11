.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mClientVerificationCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "clientVerificationCert"
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

.field mSakCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "sakCert"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;->mIv:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;->mEncData:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;->mSakCert:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;->mClientVerificationCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientVerificationCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;->mClientVerificationCert:Ljava/lang/String;

    return-object p0
.end method

.method public getEncData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;->mEncData:Ljava/lang/String;

    return-object p0
.end method

.method public getIv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;->mIv:Ljava/lang/String;

    return-object p0
.end method

.method public getSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;->mSakCert:Ljava/lang/String;

    return-object p0
.end method
