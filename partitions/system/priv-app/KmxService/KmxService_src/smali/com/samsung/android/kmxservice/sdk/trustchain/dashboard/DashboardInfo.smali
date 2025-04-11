.class public Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final encryptionPublicKey:Ljava/lang/String;

.field private final securityStatus:Ljava/lang/String;

.field private final securityStatusCause:Ljava/lang/String;

.field private final timestamp:Ljava/lang/String;

.field private final trustLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->securityStatus:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->securityStatusCause:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->timestamp:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->trustLevel:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->encryptionPublicKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncryptionPublicKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->encryptionPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->securityStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityStatusCause()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->securityStatusCause:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method public getTrustLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->trustLevel:Ljava/lang/String;

    return-object p0
.end method
