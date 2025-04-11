.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mEncCeRk:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encCeRk"
    .end annotation
.end field

.field mHsmSignCert:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "hsmSignCert"
    .end annotation
.end field

.field mSignCeRk:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "signCeRk"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;->mEncCeRk:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;->mSignCeRk:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;->mHsmSignCert:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncCeRk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;->mEncCeRk:Ljava/lang/String;

    return-object p0
.end method

.method public getHsmSignCert()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;->mHsmSignCert:Ljava/lang/String;

    return-object p0
.end method

.method public getSignCeRk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;->mSignCeRk:Ljava/lang/String;

    return-object p0
.end method
