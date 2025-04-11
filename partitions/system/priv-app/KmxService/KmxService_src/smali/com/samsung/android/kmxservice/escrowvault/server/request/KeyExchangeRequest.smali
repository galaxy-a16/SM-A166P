.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;
.super Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
.source "SourceFile"


# instance fields
.field mRefDeviceId:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "refDeviceId"
    .end annotation
.end field

.field mSakCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "sakCert"
    .end annotation
.end field

.field mSecretA:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "secretA"
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;->mRefDeviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;->mSecretA:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;->mSakCert:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;->mTaSignCert:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;->mSignTaEncPk:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;->mTaEncPk:Ljava/lang/String;

    return-void
.end method
