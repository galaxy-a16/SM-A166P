.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mEncCredential:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encCredential"
    .end annotation
.end field

.field mIv:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "iv"
    .end annotation
.end field

.field mServerVerificationCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "serverVerificationCert"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;->mIv:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;->mEncCredential:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;->mServerVerificationCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncCredential()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;->mEncCredential:Ljava/lang/String;

    return-object p0
.end method

.method public getIv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;->mIv:Ljava/lang/String;

    return-object p0
.end method

.method public getServerVerificationCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;->mServerVerificationCert:Ljava/lang/String;

    return-object p0
.end method
