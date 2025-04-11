.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mEncToken:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encToken"
    .end annotation
.end field

.field mHsmSignCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "hsmSignCert"
    .end annotation
.end field

.field mM2:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "m2"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;->mM2:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;->mEncToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;->mHsmSignCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;->mEncToken:Ljava/lang/String;

    return-object p0
.end method

.method public getHsmSignCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;->mHsmSignCert:Ljava/lang/String;

    return-object p0
.end method

.method public getM2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;->mM2:Ljava/lang/String;

    return-object p0
.end method
