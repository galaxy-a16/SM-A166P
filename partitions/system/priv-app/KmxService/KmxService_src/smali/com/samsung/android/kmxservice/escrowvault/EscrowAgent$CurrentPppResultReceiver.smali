.class Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CurrentPppResultReceiver"
.end annotation


# instance fields
.field private final mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestCode:I

.field private final mServiceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->mServiceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->mConsumer:Ljava/util/function/Consumer;

    iput p3, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->mRequestCode:I

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->lambda$onReceiveResult$0(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    return-void
.end method

.method private synthetic lambda$onReceiveResult$0(Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CurrentPppResultReceiver onReceiveResult = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const-string p1, "ppp"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x20

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->makeSecureRandomByte(I)[B

    move-result-object p2

    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p1}, Landroidx/work/impl/x;->j(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->D(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v3, v0, p2, v2, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->C(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;[B[B[B[B)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->mServiceName:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/kmxservice/escrowvault/a0;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "makeVerifier failed"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->mServiceName:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->mRequestCode:I

    const/16 v0, 0x6d

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->mServiceName:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$CurrentPppResultReceiver;->mRequestCode:I

    const/16 v0, 0x66

    :goto_1
    invoke-static {p1, p2, p0, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    :goto_2
    return-void
.end method
