.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mClientVerificationCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "clientVerificationCert"
    .end annotation
.end field

.field mEncSignRequest:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encSignRequest"
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

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;->mIv:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;->mEncSignRequest:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;->mSakCert:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;->mClientVerificationCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientVerificationCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;->mClientVerificationCert:Ljava/lang/String;

    return-object p0
.end method

.method public getEncSignRequest()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;->mEncSignRequest:Ljava/lang/String;

    return-object p0
.end method

.method public getIv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;->mIv:Ljava/lang/String;

    return-object p0
.end method

.method public getSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;->mSakCert:Ljava/lang/String;

    return-object p0
.end method
