.class Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;
.super Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceInterface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EscrowServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceInterface$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V

    return-void
.end method

.method public static synthetic A(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCredential_V2$21(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic B(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object v3, p6

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCredential_V1$7(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    return-void
.end method

.method public static synthetic C(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCredential$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    return-void
.end method

.method public static synthetic D(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCredential_V1$6(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;[B[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic E(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/security/Key;[B)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCredential_V1$8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/security/Key;[B)V

    return-void
.end method

.method public static synthetic F(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;Ljava/util/ArrayList;Ljava/util/function/Consumer;Z[B)V
    .locals 8

    move-object v0, p1

    move-object v1, p2

    move v2, p0

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p3

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCek$29(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/function/Consumer;ZLjava/security/Key;[B)V

    return-void
.end method

.method public static synthetic G(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$updateCredentialWithTA$34(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic H(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$needSrpVerification$37(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic I(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCredentialWithTA$19(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic J(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Landroid/os/Bundle;Ljava/security/Key;[BLjava/lang/String;ILjava/util/function/Consumer;Z)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCek$31(Landroid/os/Bundle;Ljava/security/Key;[BLjava/lang/String;ILjava/util/function/Consumer;Z)V

    return-void
.end method

.method public static synthetic K(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$deleteEscrowInfoInternal$17(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic L(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;[B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$deleteCredential$15([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;[B)V

    return-void
.end method

.method public static synthetic M(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$updateCredentialWithTA$33(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void
.end method

.method public static synthetic N(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$deleteCredential$16(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic O(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$deleteCredentialWithTA$36(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic P(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCredential$11(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public static synthetic Q(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ZLcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$deleteCredentialWithTA$35(Ljava/lang/String;ZLcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void
.end method

.method public static synthetic R(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;Ljava/util/ArrayList;Ljava/util/function/Consumer;Z[B)V
    .locals 8

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p7

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCek$30(Ljava/lang/String;Ljava/security/Key;[BLjava/util/ArrayList;Ljava/util/function/Consumer;ZI)V

    return-void
.end method

.method public static synthetic S(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/lang/Runnable;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCredential_V2$20(Ljava/lang/String;ILjava/lang/Runnable;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void
.end method

.method public static synthetic T(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V
    .locals 7

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p0

    move-object v4, p4

    move v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCek$27(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;ILjava/security/Key;ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic U(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCredential$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void
.end method

.method public static synthetic V(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$updateCek$32(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    return-void
.end method

.method public static synthetic W(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCredential$9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public static synthetic X(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$getHsmCredCert$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Y(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCredential$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    return-void
.end method

.method public static synthetic Z(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[BLandroid/os/Bundle;Ljava/lang/Runnable;Ljava/security/Key;[B)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCredential_V1$13(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[BLandroid/os/Bundle;Ljava/lang/Runnable;Ljava/security/Key;[B)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCredentialWithTA$18(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void
.end method

.method public static synthetic a0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;[B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$handleCek$23(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;[B)V

    return-void
.end method

.method public static synthetic b0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCek$25(Ljava/lang/String;Ljava/security/Key;ZLjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Landroid/os/Bundle;[B[BLjava/lang/String;[BLjava/lang/Runnable;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCredential_V1$12(Landroid/os/Bundle;[B[BLjava/lang/String;[BLjava/lang/Runnable;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void
.end method

.method public static synthetic c0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCek$24(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;ZLjava/util/function/Consumer;)V

    return-void
.end method

.method private confirmPasswordAndDeleteEscrow(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/l;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/l;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->confirmPassword(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCredential_V1$5(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void
.end method

.method public static synthetic d0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$canDeleteCredential$14(Ljava/lang/String;)V

    return-void
.end method

.method private deleteEscrowInfoInternal(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "deleteEscrowInfoInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/d;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$registerCek$26(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic f0(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;Ljava/util/ArrayList;Ljava/util/function/Consumer;Z[B)V
    .locals 8

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p7

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCek$28(Ljava/lang/String;Ljava/security/Key;[BLjava/util/ArrayList;Ljava/util/function/Consumer;ZI)V

    return-void
.end method

.method public static synthetic g0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$isExistCredential$0(Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;Ljava/lang/String;)V

    return-void
.end method

.method private getEvCredCertV1(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_ESCROW:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestChallenge(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "challenge"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "kmx_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic h0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$getCredentialInfo$38(Ljava/lang/String;)V

    return-void
.end method

.method private handleCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;[BZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;",
            ">;",
            "Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;",
            "Ljava/security/Key;",
            "[BZ)V"
        }
    .end annotation

    .line 1
    move-object v1, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v4, p4

    const-string v0, "KMX|EscrowAgent"

    const-string v2, "handleCek"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "device_list"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v5

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-virtual {v12}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getVersion()Ljava/lang/String;

    move-result-object v13

    const-string v14, "V2"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getDeviceId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v13}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v11, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    move v11, v5

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->needToRegisterCek(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_9

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    if-eqz v3, :cond_7

    iget-object v0, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v5, "V1"

    invoke-static {v0, v2, v3, v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->t(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v5, p5

    if-eqz v0, :cond_5

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->updateCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    goto/16 :goto_4

    :cond_5
    if-eqz p6, :cond_6

    if-nez p7, :cond_8

    :cond_6
    iget-object v9, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v10, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;

    iget-object v11, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v12, Lcom/samsung/android/kmxservice/escrowvault/i;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/i;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    invoke-direct {v10, v11, v6, v7, v12}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    invoke-static {v9, v8, v10}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->K(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_4

    :cond_7
    move-object/from16 v5, p5

    if-eqz p8, :cond_8

    iget-object v0, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->generateEVKey()Z

    goto :goto_3

    :cond_8
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->registerCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V

    goto :goto_4

    :cond_9
    invoke-direct {p0, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->needToRecoverCek(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->recoverCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Ljava/security/Key;[BZ)V

    goto :goto_4

    :cond_a
    :goto_3
    invoke-interface {v4, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method private handleCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;[BZ)V

    return-void
.end method

.method private handleCredential(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    move-object/from16 v3, p2

    move/from16 v10, p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleCredential = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KMX|EscrowAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestChallenge_V2(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "challenge"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v1, 0xd0

    goto/16 :goto_2

    :cond_0
    const/4 v4, 0x0

    new-array v5, v4, [B

    const-string v6, "SamsungCloud"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->i(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v12, v9

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v6, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->j(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->getFabricKeyId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaGuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "__"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "credentialId = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->DELETE_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->exportCredential(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v1, 0x191

    :goto_2
    invoke-static {v0, p1, v10, v1, v11}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_3
    move-object v5, v2

    :cond_4
    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2, v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->A(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [[B

    iget-object v7, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    aput-object v7, v2, v4

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v2, v7

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v8, 0x2

    aput-object v1, v2, v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v8, 0x3

    aput-object v1, v2, v8

    const/4 v1, 0x4

    aput-object v5, v2, v1

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->signCred([B)[B

    move-result-object v8

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTASignCert()[Ljava/security/cert/Certificate;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v13

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object v4, v5

    move-object v5, v8

    move-object v8, v13

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestCredential_V2(Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz p4, :cond_5

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->deleteCredential(Ljava/lang/String;)V

    :cond_5
    if-eqz p5, :cond_6

    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0, p1, v10, v1, v11}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    :cond_6
    return-void
.end method

.method public static synthetic i0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$recoverCredential$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public static synthetic j0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$handleCek$22(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V

    return-void
.end method

.method private synthetic lambda$canDeleteCredential$14(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->DELETE_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestChallenge(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "challenge"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x68

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v0, 0xd0

    const/4 v1, 0x0

    invoke-static {p0, p1, v4, v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kmx_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const-string v1, "ev_error"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p1, v4, v1, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$confirmPasswordAndDeleteEscrow$39(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->deleteEscrowInfoInternal(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 p3, 0x66

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteCredential$15([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;[B)V
    .locals 7

    const/4 p6, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p6, p5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->aesCipherData([B[BILjava/security/Key;)Landroid/util/Pair;

    move-result-object p1

    iget-object p5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, p5

    check-cast v3, [B

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, [B

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->deleteCredential(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 p3, 0x69

    invoke-static {p0, p2, p3, p1, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$deleteCredential$16(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v1, p0

    move-object v6, p1

    iget-object v0, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    const/16 v8, 0x69

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v1, 0xc9

    const/4 v2, 0x0

    invoke-static {v0, p1, v8, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v9, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v10, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;

    iget-object v11, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v12, Lcom/samsung/android/kmxservice/escrowvault/s;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/s;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {v10, v11, p1, v8, v12}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    invoke-static {v9, v7, v10}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->K(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private synthetic lambda$deleteCredentialWithTA$35(Ljava/lang/String;ZLcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 6

    sget-object p3, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->DELETE_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCredential(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private synthetic lambda$deleteCredentialWithTA$36(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList_V2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const/16 v3, 0xcc

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private synthetic lambda$deleteEscrowInfoInternal$17(Ljava/lang/String;I)V
    .locals 12

    sget-object v0, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->DELETE_ESCROW:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestChallenge_V2(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestChallenge(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    const-string v2, "challenge"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v0, 0xd0

    invoke-static {p0, p1, p2, v0, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "KMX|EscrowAgent"

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v2

    const/4 v9, 0x4

    new-array v9, v9, [[B

    iget-object v10, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v10}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    aput-object v10, v9, v8

    aput-object v1, v9, v6

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v9, v5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v9, v1

    invoke-static {v9}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->signCred([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTASignCert()[Ljava/security/cert/Certificate;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    aget-object v2, v1, v8

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    aget-object v1, v1, v6

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v5

    invoke-virtual {v5, p1, v0, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->deleteEscrow_V2(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->deleteEvKey()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "key delete success = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "deleteEscrow"

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getAttestationResult(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p0, "[deleteEscrowInfo] attestationResult is null"

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v2, "private_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    const-string v9, "cert_chain"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    if-nez v2, :cond_5

    const-string p0, "[deleteEscrowInfo] PrivateKey is null"

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-nez v0, :cond_6

    const-string p0, "[deleteEscrowInfo] certChain is null"

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    aget-object v7, v0, v8

    invoke-static {v7}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v7

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v5, [[B

    iget-object v9, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v9}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    aput-object v9, v5, v8

    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->signData([BLjava/security/PrivateKey;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0, v7}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->deleteEscrow(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const-string v2, "registerCek"

    invoke-static {v1, v2, v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->G(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Z)V

    const/16 v1, 0x6a

    if-eq p2, v1, :cond_8

    if-ne v0, v4, :cond_8

    const/16 v0, 0xcf

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p0, p1, p2, v0, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$getCredentialInfo$38(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getCredentialInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ev_error"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v2, "credential_info"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->E(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;->getCredentialId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "credential_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v2, 0xce

    invoke-static {p0, p1, v2, v1, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$getHsmCredCert$1(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->getEvCredCertV1(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0xd0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v2, 0x65

    invoke-static {p0, p1, v2, v1, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$handleCek$22(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->registerCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V

    return-void
.end method

.method private synthetic lambda$handleCek$23(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;[B)V
    .locals 8

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->confirmPasswordAndDeleteEscrow(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance p6, Ljava/lang/Thread;

    new-instance v7, Lcom/samsung/android/kmxservice/escrowvault/f;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/f;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V

    invoke-direct {p6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$isExistCredential$0(Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SamsungPass"

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->isExistCredential_V2(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->isExistCredential(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "exist_credential"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 p1, 0x64

    const/4 v1, -0x1

    invoke-static {p0, p2, p1, v1, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$needSrpVerification$37(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList_V2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->isExistCek()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "V2"

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->t(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "need_srp_verification"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "needSrpVerification result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KMX|EscrowAgent"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v0, 0xcd

    const/4 v2, -0x1

    invoke-static {p0, p1, v0, v2, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$recoverCek$28(Ljava/lang/String;Ljava/security/Key;[BLjava/util/ArrayList;Ljava/util/function/Consumer;ZI)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->recoveryCekInternal(Ljava/lang/String;Ljava/security/Key;[B)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "V2"

    invoke-static {v0, p4, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->t(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;-><init>(Ljava/security/Key;[B)V

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p7, p5, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->updateCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p7

    move-object v3, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->registerCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$recoverCek$29(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/function/Consumer;ZLjava/security/Key;[B)V
    .locals 12

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->confirmPasswordAndDeleteEscrow(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/kmxservice/escrowvault/k;

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/kmxservice/escrowvault/k;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;[BLjava/util/ArrayList;Ljava/util/function/Consumer;ZII)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$recoverCek$30(Ljava/lang/String;Ljava/security/Key;[BLjava/util/ArrayList;Ljava/util/function/Consumer;ZI)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->recoveryCekInternal(Ljava/lang/String;Ljava/security/Key;[B)V

    iget-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V2"

    invoke-static {p3, p4, v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->t(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p5, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    invoke-direct {p0, p1, p7, p5, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->updateCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p7

    move-object v3, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->registerCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$recoverCek$31(Landroid/os/Bundle;Ljava/security/Key;[BLjava/lang/String;ILjava/util/function/Consumer;Z)V
    .locals 12

    move-object v1, p0

    move-object v7, p1

    const-string v0, "device_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/kmxservice/escrowvault/k;

    const/4 v9, 0x1

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/kmxservice/escrowvault/k;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;[BLjava/util/ArrayList;Ljava/util/function/Consumer;ZII)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v8, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v9, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;

    iget-object v10, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v11, Lcom/samsung/android/kmxservice/escrowvault/r;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/r;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/function/Consumer;Z)V

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v9, v10, v0, v1, v11}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    invoke-static {v8, p1, v9}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->K(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$recoverCredential$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList_V2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    move-object v9, v0

    invoke-virtual {v9}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    const/16 v10, 0x67

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v1, 0xc9

    const/4 v2, 0x0

    invoke-static {v0, v8, v10, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SamsungPass"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_2

    iget-object v0, v7, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->l(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, v7, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->isExistCredential_V2(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v13, v11

    goto :goto_1

    :cond_3
    move v13, v12

    :goto_1
    new-instance v14, Lcom/samsung/android/kmxservice/escrowvault/v;

    const/4 v6, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/v;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    if-eqz v13, :cond_4

    iget-object v0, v7, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->getChallenge()[B

    move-result-object v2

    iget-object v0, v7, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTASignCert()[Ljava/security/cert/Certificate;

    move-result-object v0

    aget-object v1, v0, v12

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    aget-object v0, v0, v11

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v7, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTaEncKeyAndSignature()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "public_key_signature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-string v1, "public_key"

    const-class v6, Ljava/security/PublicKey;

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v7, v9

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->recoverCredential_V1(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[BLandroid/os/Bundle;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v8, v10, v14}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->recoverCredential_V2(Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->recoverCredential_V1(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$recoverCredential$11(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/kmxservice/escrowvault/v;

    const/4 v7, 0x2

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/v;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    invoke-virtual {v0, p1, v8}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$recoverCredential$9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/security/cert/Certificate;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object p1

    const-string v5, "DRK_V2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {p1, p3, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->exportClientCredential(Ljava/lang/String;[Ljava/security/cert/Certificate;Z)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0x68

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v2

    new-array v1, v1, [[B

    aput-object p4, v1, v4

    aput-object p1, v1, p2

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->signCredWithSha512([B)[B

    move-result-object p4

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTASignCert()[Ljava/security/cert/Certificate;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    aget-object p2, v1, p2

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "ev_error"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "enc_cred"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "sign_enc_cred"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "ev_sign_cert"

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sak_cert"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v3

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 p2, 0x67

    invoke-static {p0, p3, p2, p1, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$recoverCredential_V1$12(Landroid/os/Bundle;[B[BLjava/lang/String;[BLjava/lang/Runnable;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 6

    const-string p7, "hsm_enc_verifier_cert"

    invoke-virtual {p1, p7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p7, 0x1

    new-array v5, p7, [Ljava/security/cert/Certificate;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 p1, 0x2

    new-array p1, p1, [[B

    aput-object p2, p1, v0

    aput-object p3, p1, p7

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v0

    move-object v1, p4

    move-object v3, p3

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->importClientCredential(Ljava/lang/String;[B[B[B[Ljava/security/cert/Certificate;)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "importRecoveredCredential = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KMX|EscrowAgent"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCredential(Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_0
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$recoverCredential_V1$13(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[BLandroid/os/Bundle;Ljava/lang/Runnable;Ljava/security/Key;[B)V
    .locals 14

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p9

    const/16 v7, 0x67

    if-nez v10, :cond_0

    if-nez p10, :cond_0

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->confirmPasswordAndDeleteEscrow(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->recoverCredential(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[B)Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "ev_error"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1, p1, v7, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "enc_2_cred"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "iv"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v3, v4, v10}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->aesCipherData([B[BILjava/security/Key;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "encCredential"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [B
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    move v11, v6

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_2

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "signEncCredential"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v0, v4, [B

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v6, v4, :cond_3

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "enc_cred"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "sign_enc_cred"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v0

    move-object v4, v5

    goto :goto_3

    :catch_0
    move-object v3, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-object v3, v0

    :goto_2
    const-string v4, "KMX|EscrowAgent"

    const-string v5, "json parsing error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    move-object v6, v3

    :goto_3
    const-string v0, "device_list"

    move-object/from16 v11, p7

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p8, :cond_4

    new-instance v12, Lcom/samsung/android/kmxservice/escrowvault/e;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v3, p2

    move-object v5, p1

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/e;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Landroid/os/Bundle;[B[BLjava/lang/String;[BLjava/lang/Runnable;)V

    const/16 v2, 0x67

    const/4 v5, 0x0

    const/4 v13, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p7

    move-object v4, v12

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;[BZ)V

    goto :goto_4

    :cond_4
    iget-object v3, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "V1"

    invoke-static {v3, v0, v4, v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->t(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->f(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->k(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x67

    move/from16 p2, v4

    move-object/from16 p3, v2

    move-object/from16 p4, v0

    move-object/from16 p5, p1

    move-object/from16 p6, v1

    move-object/from16 p7, v3

    move-object/from16 p8, p9

    invoke-static/range {p2 .. p8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->F(ILandroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;)V

    goto :goto_4

    :cond_5
    iget-object v0, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0, p1, v7, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    :goto_4
    return-void
.end method

.method private synthetic lambda$recoverCredential_V2$20(Ljava/lang/String;ILjava/lang/Runnable;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "delete already stored fabricKey success = "

    iget-object v4, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->getChallenge()[B

    move-result-object v9

    iget-object v4, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v4

    invoke-virtual {v4, v2, v9}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->recoverCredentials_V2(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "enc_cred"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sign_enc_cred"

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "hsm_sign_cert"

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "credential_info"

    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    const-string v14, "KMX|EscrowAgent"

    if-eqz v5, :cond_9

    if-nez v6, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v15, "SamsungCloud"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, ""

    if-nez v8, :cond_2

    iget-object v8, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->i(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->deleteCredential(Ljava/lang/String;)V

    move-object v4, v2

    :goto_0
    move-object v0, v10

    goto/16 :goto_3

    :cond_2
    :goto_1
    iget-object v8, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v8, v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->E(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/escrowvault/data/CredentialInfo;->getCredentialId()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaGuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "__"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "credentialId = "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    move-result-object v8

    :try_start_0
    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaGuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v10}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->deleteKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "key delete exception = "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_3
    iget-object v8, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v8

    iget-object v10, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v10}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v11}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v16

    invoke-static {v7}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v17

    move-object v5, v8

    move-object v6, v4

    move-object v7, v10

    move-object v8, v11

    move-object v10, v12

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->importRecoveredCredential(Ljava/lang/String;[B[B[B[B[BLjava/security/cert/X509Certificate;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "importRecoveredCredential = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->i(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    iget-object v5, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->j(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaGuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->recoverFabricKeyId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "recover fabricKeyId success : "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const-string v0, "recover fabricKeyId fail"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    if-nez p3, :cond_8

    iget-object v0, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    if-eqz v4, :cond_7

    const/4 v1, -0x1

    goto :goto_5

    :cond_7
    const/16 v1, 0x192

    :goto_5
    invoke-static {v0, v2, v3, v1, v13}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_6

    :cond_8
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :goto_6
    return-void

    :cond_9
    :goto_7
    const-string v0, "eCred or signECred == null"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v1, 0x191

    invoke-static {v0, v2, v3, v1, v13}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$recoverCredential_V2$21(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList_V2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/kmxservice/escrowvault/y;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/y;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/lang/Runnable;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private synthetic lambda$registerCek$24(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;ZLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->registerCekInternal(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;Z)V

    new-instance p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;-><init>(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$registerCek$25(Ljava/lang/String;Ljava/security/Key;ZLjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 10

    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcom/samsung/android/kmxservice/escrowvault/g;

    const/4 v2, 0x0

    move-object v1, v9

    move-object v3, p0

    move-object v4, p5

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/g;-><init>(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$registerCek$26(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;ZLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->registerCekInternal(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;Z)V

    new-instance p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;-><init>(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V

    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$registerCek$27(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;ILjava/security/Key;ZLjava/util/function/Consumer;)V
    .locals 9

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->z(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->u(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V

    :cond_0
    move-object v4, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "verifierInfo is null : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KMX|EscrowAgent"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_2

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v8, Lcom/samsung/android/kmxservice/escrowvault/u;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/u;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;ZLjava/util/function/Consumer;)V

    invoke-direct {v0, v1, p2, p3, v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/Consumer;)V

    invoke-static {p1, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->J(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/ResultReceiver;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/samsung/android/kmxservice/escrowvault/g;

    const/4 v2, 0x1

    move-object v1, p3

    move-object v3, p0

    move-object v5, p2

    move-object v6, p4

    move-object v7, p6

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/g;-><init>(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$registerCredential$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v7, p3

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/security/cert/Certificate;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v6, v9

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v6, v10

    const/4 v11, 0x4

    new-array v1, v11, [[B

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aput-object v2, v1, v9

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->n(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v1, v8

    const/4 v12, 0x3

    aput-object p4, v1, v12

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object v3

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->n(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v1

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->importClientCredential(Ljava/lang/String;[B[B[B[Ljava/security/cert/Certificate;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x66

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v1, 0x6c

    :goto_0
    invoke-static {v0, v7, v3, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_0
    if-eqz p6, :cond_2

    invoke-direct {p0, v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->getEvCredCertV1(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "challenge"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v1, 0xd0

    goto :goto_0

    :cond_1
    const-string v2, "hsm_enc_cred_cert"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    new-array v2, v10, [Ljava/security/cert/Certificate;

    aput-object v1, v2, v9

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v1

    invoke-virtual {v1, v7, v2, v10}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->exportClientCredential(Ljava/lang/String;[Ljava/security/cert/Certificate;Z)[B

    move-result-object v2

    new-array v1, v11, [[B

    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    aput-object v3, v1, v9

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    aput-object v3, v1, v10

    aput-object v4, v1, v8

    aput-object v2, v1, v12

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->signCred([B)[B

    move-result-object v3

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTASignCert()[Ljava/security/cert/Certificate;

    move-result-object v1

    aget-object v4, v1, v9

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v5

    aget-object v1, v1, v10

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->registerCredential_V1(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCredential(Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$registerCredential$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 13

    move-object v8, p0

    move-object v9, p1

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SamsungPass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->l(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->isExistCredential_V2(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    iget-object v0, v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList_V2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/kmxservice/escrowvault/b0;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/b0;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V

    const/16 v2, 0x66

    move-object v0, p0

    move-object v1, p1

    move-object v3, v11

    move-object v4, v12

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Z)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->registerCredential_V1(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$registerCredential$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    new-instance v9, Lcom/samsung/android/kmxservice/escrowvault/z;

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/z;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BI)V

    invoke-virtual {v0, p1, v9}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$registerCredentialWithTA$18(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 6

    sget-object p2, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc9

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCredential(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private synthetic lambda$registerCredentialWithTA$19(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList_V2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const/16 v3, 0xc9

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private synthetic lambda$registerCredential_V1$5(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 6

    sget-object p2, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCredential(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private synthetic lambda$registerCredential_V1$6(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;[B[BLjava/lang/String;Ljava/lang/String;)V
    .locals 26

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    iget-object v0, v9, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v10

    iget-object v0, v9, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->f(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v9, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->k(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getESalt()[B

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierIv()[B

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifier()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierEncKey()[B

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getSignVerifier()[B

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getVerifierType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentSakCert()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentVerificationCert()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v11, p1

    move-object/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    move-object/from16 v25, p6

    invoke-virtual/range {v10 .. v25}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->registerEscrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v0

    const/4 v11, 0x1

    const/4 v12, -0x1

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne v10, v12, :cond_0

    new-instance v4, Lcom/samsung/android/kmxservice/escrowvault/h;

    invoke-direct {v4, v9, v1, v11}, Lcom/samsung/android/kmxservice/escrowvault/h;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;I)V

    iget-object v0, v9, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList_V2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/16 v2, 0x66

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;[BZ)V

    goto :goto_0

    :cond_0
    iget-object v0, v9, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v10, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    :goto_0
    iget-object v0, v9, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    if-ne v10, v12, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    const-string v1, "registerEscrow"

    invoke-static {v0, v1, v11}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->G(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$registerCredential_V1$7(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 10

    move-object v1, p0

    if-nez p6, :cond_0

    iget-object v0, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/16 v1, 0x6d

    const/4 v2, 0x0

    const/16 v3, 0x66

    move-object v4, p1

    invoke-static {v0, p1, v3, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v4, p1

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/samsung/android/kmxservice/escrowvault/m;

    move-object v0, v9

    move-object/from16 v2, p6

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/m;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$registerCredential_V1$8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/security/Key;[B)V
    .locals 11

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v8, p6

    const/16 v9, 0x66

    if-nez v8, :cond_0

    if-nez p7, :cond_0

    invoke-direct {p0, p1, v9}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->confirmPasswordAndDeleteEscrow(Ljava/lang/String;I)V

    return-void

    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v2, p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x1

    const/4 v10, 0x0

    invoke-static {v1, v10, v2, v8}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->aesCipherData([B[BILjava/security/Key;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, [B

    move-object v1, v2

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->registerCredential(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "V1"

    move-object/from16 v5, p5

    invoke-static {v2, v5, v3, v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->t(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->f(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->k(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x66

    const/4 v1, 0x0

    move-object v3, p1

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->F(ILandroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0, p1, v9, v1, v10}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateCek$32(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p0, p1, p2, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->I(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    new-instance p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;

    invoke-direct {p0, p4}, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;-><init>(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$updateCredentialWithTA$33(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 6

    sget-object p2, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->UPDATE_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcb

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCredential(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private synthetic lambda$updateCredentialWithTA$34(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList_V2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const/16 v3, 0xcc

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private needToRecoverCek(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->isExistCek()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "V2"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->t(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->deleteEvKey()Z

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private needToRegisterCek(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    const-string v1, "V2"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_2
    return p0
.end method

.method private recoverCek(Ljava/lang/String;ILandroid/os/Bundle;Ljava/util/function/Consumer;Ljava/security/Key;[BZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;",
            ">;",
            "Ljava/security/Key;",
            "[BZ)V"
        }
    .end annotation

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "recoverCek"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v11, Lcom/samsung/android/kmxservice/escrowvault/k;

    move-object v2, v11

    move-object v3, p0

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p1

    move v8, p2

    move-object/from16 v9, p4

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/kmxservice/escrowvault/k;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Landroid/os/Bundle;Ljava/security/Key;[BLjava/lang/String;ILjava/util/function/Consumer;Z)V

    move-object v0, p1

    move v2, p2

    invoke-static {v1, p1, p2, v11}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->v(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method private recoverCredential_V1(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->recoverCredential_V1(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[BLandroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method

.method private recoverCredential_V1(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[BLandroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 14

    .line 2
    move-object v1, p0

    iget-object v10, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v11, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;

    iget-object v12, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v13, Lcom/samsung/android/kmxservice/escrowvault/c0;

    move-object v0, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/kmxservice/escrowvault/c0;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[BLandroid/os/Bundle;Ljava/lang/Runnable;)V

    const/16 v0, 0x67

    move-object v1, p1

    invoke-direct {v11, v12, p1, v0, v13}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    move-object/from16 v0, p7

    invoke-static {v10, v0, v11}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->K(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private recoverCredential_V2(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 2

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "recoverCredential_V2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/o;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/o;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private recoveryCekInternal(Ljava/lang/String;Ljava/security/Key;[B)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "recoveryCekInternal"

    const-string v2, "KMX|EscrowAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTASignCert()[Ljava/security/cert/Certificate;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTaEncKeyAndSignature()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "public_key_signature"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    const-string v1, "public_key"

    const-class v5, Ljava/security/PublicKey;

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->getChallenge()[B

    move-result-object v16

    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v6

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    move-object/from16 v7, p1

    move-object/from16 v8, v16

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->recoverCeRk_V2(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[B)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "ecerk"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v5, 0xc

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    array-length v6, v3

    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const-string v5, "sign_cerk"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    const/4 v5, 0x2

    move-object/from16 v6, p2

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->aesCipherData([B[BILjava/security/Key;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v3

    check-cast v14, [B

    const-string v3, "hsm_sign_cert"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v12

    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    move-object/from16 v13, p3

    invoke-virtual/range {v12 .. v18}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->importCek([B[B[B[B[BLjava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "importCek = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;",
            ">;",
            "Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;",
            "Ljava/security/Key;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->registerCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;Z)V

    return-void
.end method

.method private registerCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;",
            ">;",
            "Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;",
            "Ljava/security/Key;",
            "Z)V"
        }
    .end annotation

    .line 2
    move-object v2, p0

    const-string v0, "registerCek"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->generateEVKey()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key generate success = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v2, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v9, Lcom/samsung/android/kmxservice/escrowvault/n;

    move-object v0, v9

    move v1, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p3

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/n;-><init>(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V

    move-object v0, p1

    invoke-static {v8, p1, p2, v9}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->v(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method private registerCekInternal(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    const-string v3, "registerCekInternal"

    const-string v12, "KMX|EscrowAgent"

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->j(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->queryToken()[B

    move-result-object v3

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    iget-object v4, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_ESCROW:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_VERIFIER:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestChallenge_V2(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "challenge"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsm_enc_cred_cert"

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "registerCek challenge is null"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v6, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v13

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v14

    iget-object v6, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    iget-object v6, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v18

    move-object/from16 v17, p2

    invoke-virtual/range {v13 .. v18}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->exportCek([B[B[BLcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/cert/Certificate;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    iget-object v6, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTASignCert()[Ljava/security/cert/Certificate;

    move-result-object v6

    const/4 v13, 0x0

    aget-object v7, v6, v13

    invoke-static {v7}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    aget-object v6, v6, v14

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "evs"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "ecerk"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "sign_ecerk"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v15, -0x1

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->f(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->k(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getVerifierType()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p1

    move-object v5, v6

    move-object v6, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->registerEscrow_V2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    new-array v9, v4, [[B

    aput-object v3, v9, v13

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v9, v14

    invoke-static {v9}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object v3

    if-eqz p4, :cond_4

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->encryptData([B)[B

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    invoke-static {v3, v5, v14, v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->aesCipherData([B[BILjava/security/Key;)Landroid/util/Pair;

    move-result-object v1

    new-array v3, v4, [[B

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [B

    aput-object v4, v3, v13

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    aput-object v1, v3, v14

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object v1

    :goto_1
    move-object v9, v1

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->f(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->k(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getVerifierType()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v2, p1

    move-object v5, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->registerVerifierCeRk_V2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v15, :cond_5

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->j(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->deleteToken()I

    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerCek success = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v15, :cond_6

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->deleteEvKey()Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fail registerCek and delete EV key = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    if-ne v1, v15, :cond_7

    move v2, v14

    goto :goto_3

    :cond_7
    move v2, v13

    :goto_3
    const-string v4, "registerCek"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->G(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v1, v15, :cond_8

    move v13, v14

    :cond_8
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerCredential_V1(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    iget-object v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestDeviceList(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v0, "device_list"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v5, 0x1

    const/16 v12, 0x66

    const-string v0, "KMX|EscrowAgent"

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "there is any verifier in server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "encCredential"

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "signEncCredential"

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "json parsing error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->getScKey()Ljava/security/Key;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->getScKey()Ljava/security/Key;

    move-result-object v1

    invoke-static {v0, v13, v5, v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->aesCipherData([B[BILjava/security/Key;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [B

    move-object v0, v1

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->registerCredential(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v14, :cond_2

    sget-object v0, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCredential(Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_9

    :cond_2
    iget-object v1, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1, v15, v12, v0, v13}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    goto/16 :goto_9

    :cond_3
    :goto_1
    iget-object v9, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v10, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;

    iget-object v11, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v13, Lcom/samsung/android/kmxservice/escrowvault/q;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/q;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v10, v11, v15, v12, v13}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/BiConsumer;)V

    invoke-static {v9, v7, v10}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->K(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto/16 :goto_9

    :cond_4
    :goto_2
    const-string v1, "any verifier is not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->getVerifierInfo()Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->getVerifierInfo()Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object v1

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v1, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->z(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object v1

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verifierInfo is null : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x0

    if-nez v1, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move/from16 v3, v23

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_8

    iget-object v7, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v8, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;

    iget-object v9, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v10, Lcom/samsung/android/kmxservice/escrowvault/p;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/p;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    invoke-direct {v8, v9, v15, v12, v10}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/Consumer;)V

    invoke-static {v7, v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->J(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/ResultReceiver;)V

    goto/16 :goto_9

    :cond_8
    iget-object v2, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->u(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V

    const/4 v2, 0x6

    new-array v2, v2, [[B

    iget-object v3, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    aput-object v3, v2, v23

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getESalt()[B

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierIv()[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifier()[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierEncKey()[B

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getVerifierType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->concat([[B)[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentVerificationCert()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getSignVerifier()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->verifySignature([B[BLjava/security/PublicKey;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v1, "registerEscrow : verifySignature failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x6c

    invoke-static {v0, v15, v12, v2, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_9
    iget-object v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v7

    iget-object v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->f(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->k(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getESalt()[B

    move-result-object v11

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierIv()[B

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifier()[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierEncKey()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getSignVerifier()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getVerifierType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentSakCert()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentVerificationCert()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v8, p1

    move v1, v12

    move-object v12, v0

    move-object v0, v13

    move-object v13, v2

    move v2, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    invoke-virtual/range {v7 .. v22}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->registerEscrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz p6, :cond_b

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;->getVerifierInfo()Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object v4

    if-eqz v4, :cond_b

    if-eq v7, v2, :cond_a

    goto :goto_6

    :cond_a
    sget-object v0, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x66

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v11, v2

    move-object v2, v4

    move v3, v8

    move v4, v9

    move v8, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->handleCredential(Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_7

    :cond_b
    :goto_6
    move v11, v2

    move v8, v5

    iget-object v2, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2, v3, v1, v7, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    :goto_7
    iget-object v0, v6, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    if-ne v7, v11, :cond_c

    move v5, v8

    goto :goto_8

    :cond_c
    move/from16 v5, v23

    :goto_8
    const-string v1, "registerEscrow"

    invoke-static {v0, v1, v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->G(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Z)V

    :goto_9
    return-void
.end method

.method private showUpdateAvailablePopup()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->attachApplicationContext(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder$1;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->getUpdateAvailable()V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->startUpdateCheck()V

    return-void
.end method

.method private updateCek(Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;",
            ">;",
            "Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "updateCek"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->generateEVKey()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key generate success = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->z(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object p4

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->UPDATE_VERIFIER:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestChallenge_V2(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v3, Lcom/samsung/android/kmxservice/escrowvault/t;

    invoke-direct {v3, p0, p1, v0, p3}, Lcom/samsung/android/kmxservice/escrowvault/t;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Consumer;)V

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/Consumer;)V

    invoke-static {p4, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->J(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/ResultReceiver;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->u(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p0, p1, v0, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->I(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    new-instance p0, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;

    invoke-direct {p0, p4}, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;-><init>(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic z(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->lambda$confirmPasswordAndDeleteEscrow$39(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public canDeleteCredential()V
    .locals 5

    const-string v0, "canDeleteCredential"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    const/4 v3, 0x0

    const/16 v4, 0x68

    invoke-static {p0, v0, v4, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string p0, "caller is not verified"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/a0;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteCredential([BLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "deleteCredential"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x6f

    const/4 p3, 0x0

    const/16 v0, 0x69

    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string p0, "caller is not verified"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    new-instance v9, Lcom/samsung/android/kmxservice/escrowvault/v;

    const/4 v8, 0x3

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/v;-><init>(Landroid/os/Binder;Ljava/lang/String;[BLjava/io/Serializable;Ljava/io/Serializable;I)V

    invoke-virtual {v1, v0, v9}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteCredentialWithTA(Z)V
    .locals 4

    const-string v0, "deleteCredentialWithTA"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x6f

    const/4 v2, 0x0

    const/16 v3, 0xcc

    invoke-static {p0, p1, v3, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string p0, "caller is not verified"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/w;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/w;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/x;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/samsung/android/kmxservice/escrowvault/x;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/util/function/Consumer;I)V

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteEscrowInfo()V
    .locals 4

    const-string v0, "deleteEscrowInfo"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    const/16 v3, 0x6a

    if-nez v2, :cond_1

    const-string v2, "caller is not verified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->deleteEscrowInfoInternal(Ljava/lang/String;I)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteEvKey()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->deleteEvKey()Z

    return-void
.end method

.method public getCredentialInfo()V
    .locals 5

    const-string v0, "getCredentialInfo"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    const/4 v3, 0x0

    const/16 v4, 0x66

    invoke-static {p0, v0, v4, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string p0, "caller is not verified"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/a0;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getEvCredCert()V
    .locals 10

    const-string v0, "getEvCredCert"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    const/16 v3, 0xc8

    if-nez v2, :cond_1

    const-string v2, "caller is not verified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->getChallenge()[B

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->n(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTASignCert()[Ljava/security/cert/Certificate;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->h(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/kmxservice/escrowvault/fabriccrypto/FabricCryptoAgent;->requestTaEncKeyAndSignature()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "public_key_signature"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    const-class v8, Ljava/security/PublicKey;

    const-string v9, "public_key"

    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/security/PublicKey;

    const-string v8, "challenge"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v4, "ev_sign_cert"

    invoke-virtual {v2, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sak_cert"

    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v0

    const-string v4, "kmx_id"

    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 v0, -0x1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p0, v1, v3, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getHsmCredCert()V
    .locals 4

    const-string v0, "getHsmCredCert"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "caller is not verified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6f

    const/4 v2, 0x0

    const/16 v3, 0x65

    invoke-static {p0, v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/a0;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isExistCredential()V
    .locals 4

    const-string v0, "isExistCredential"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "caller is not verified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6f

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {p0, v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/kmxservice/escrowvault/j;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/j;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needSrpVerification()V
    .locals 5

    const-string v0, "needSrpVerification"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    const/4 v3, 0x0

    const/16 v4, 0x66

    invoke-static {p0, v0, v4, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string p0, "caller is not verified"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/a0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recoverCredential([BLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "recoverCredential"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    const/16 v3, 0x67

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x6f

    const/4 p3, 0x0

    invoke-static {p0, p1, v3, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string p0, "caller is not verified"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/v;

    const/4 v10, 0x1

    move-object v4, v2

    move-object v5, p0

    move-object v6, v0

    move-object v7, p3

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/kmxservice/escrowvault/v;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    invoke-static {v1, v0, v3, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->v(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recoverCredentialWithTA()V
    .locals 5

    const-string v0, "recoverCredentialWithTA"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xca

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    invoke-static {p0, v0, v4, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string p0, "caller is not verified"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->recoverCredential_V2(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCallback(Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;)V
    .locals 3

    const-string v0, "registerCallback"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->x(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->r(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->g(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCredential([B[BLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v1, p0

    const-string v0, "registerCredential"

    const-string v2, "KMX|EscrowAgent"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v3

    const/16 v8, 0x66

    if-nez v3, :cond_1

    iget-object v1, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-static {v1, v0, v8, v3, v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string v0, "caller is not verified"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    new-instance v11, Lcom/samsung/android/kmxservice/escrowvault/z;

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, v9

    move-object/from16 v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/z;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BI)V

    invoke-static {v10, v9, v8, v11}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->v(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "Invalid package calls KnoxMatrix"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCredentialWithTA()V
    .locals 5

    const-string v0, "registerCredentialWithTA"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    const/4 v3, 0x0

    const/16 v4, 0xc9

    invoke-static {p0, v0, v4, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string p0, "caller is not verified"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/h;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/kmxservice/escrowvault/x;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/samsung/android/kmxservice/escrowvault/x;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/util/function/Consumer;I)V

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setValueForTest(ZZZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setValueForTest V = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " F = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " M = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "caller is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "caller = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "KmxTest"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/kmxservice/common/util/PackageVerifier;->checkSamsungSignature(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->o(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Z)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->p(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Z)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p0, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->q(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Z)V

    :cond_1
    return-void
.end method

.method public unRegisterCallback()V
    .locals 2

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "unRegisterCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->g(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->o(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Z)V

    return-void
.end method

.method public updateCredentialWithTA()V
    .locals 5

    const-string v0, "updateCredentialWithTA"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->w(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->isVerified()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    const/4 v3, 0x0

    const/16 v4, 0xcb

    invoke-static {p0, v0, v4, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    const-string p0, "caller is not verified"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->getServiceName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/h;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/kmxservice/escrowvault/x;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/x;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/util/function/Consumer;I)V

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Invalid package calls KnoxMatrix"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
