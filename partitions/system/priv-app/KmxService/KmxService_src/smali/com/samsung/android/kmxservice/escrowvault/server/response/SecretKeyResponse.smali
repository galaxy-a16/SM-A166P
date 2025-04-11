.class public Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mEncSalt:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "encSalt"
    .end annotation
.end field

.field mServerPublicKey:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "secretB"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;->mServerPublicKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;->mEncSalt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncSalt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;->mEncSalt:Ljava/lang/String;

    return-object p0
.end method

.method public getServerPublicKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;->mServerPublicKey:Ljava/lang/String;

    return-object p0
.end method
