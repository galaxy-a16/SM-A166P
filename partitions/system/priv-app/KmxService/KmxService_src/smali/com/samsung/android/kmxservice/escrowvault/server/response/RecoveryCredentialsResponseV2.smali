.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mEncCredential:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encCredential"
    .end annotation
.end field

.field mHsmSignCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "hsmSignCert"
    .end annotation
.end field

.field mMetaInfo:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "metaInfo"
    .end annotation
.end field

.field mSignEncCredential:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "signEncCredential"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->mEncCredential:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->mSignEncCredential:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->mMetaInfo:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->mHsmSignCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncCredential()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->mEncCredential:Ljava/lang/String;

    return-object p0
.end method

.method public getHsmSignCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->mHsmSignCert:Ljava/lang/String;

    return-object p0
.end method

.method public getMetaInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->mMetaInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getSignEncCredential()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->mSignEncCredential:Ljava/lang/String;

    return-object p0
.end method
