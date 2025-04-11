.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mChallenge:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "challenge"
    .end annotation
.end field

.field mClientEncCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "clientEncCert"
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;->mChallenge:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;->mSakCert:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;->mClientEncCert:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;->mSignTaEncPk:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;->mTaEncPk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;->mChallenge:Ljava/lang/String;

    return-object p0
.end method

.method public getClientEncCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;->mClientEncCert:Ljava/lang/String;

    return-object p0
.end method

.method public getSakCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;->mSakCert:Ljava/lang/String;

    return-object p0
.end method
