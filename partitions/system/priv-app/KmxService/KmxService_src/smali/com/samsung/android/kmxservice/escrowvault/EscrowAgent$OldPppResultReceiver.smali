.class Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OldPppResultReceiver"
.end annotation


# instance fields
.field private final mBiConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/security/Key;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mRequestCode:I

.field private final mServiceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/BiConsumer<",
            "Ljava/security/Key;",
            "[B>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mServiceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mBiConsumer:Ljava/util/function/BiConsumer;

    iput p3, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mRequestCode:I

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->lambda$onReceiveResult$1(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->lambda$onReceiveResult$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReceiveResult$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->y(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    const-wide/16 v0, -0x1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->sendPppVerificationResult(ZIJ)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mServiceName:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mRequestCode:I

    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-static {p1, p2, p0, v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->processSrpVerification(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onReceiveResult$1(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "ppp"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "verifier_type"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "device_ID"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ppp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KMX|EscrowAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "verifierType = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " deviceId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mServiceName:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/j;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/android/kmxservice/escrowvault/j;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const/16 p2, 0x4d2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mBiConsumer:Ljava/util/function/BiConsumer;

    invoke-interface {p0, v0, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mServiceName:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mRequestCode:I

    const/16 v1, 0xcf

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mServiceName:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mRequestCode:I

    const/16 v1, 0x66

    :goto_0
    invoke-static {p1, p2, p0, v1, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method private processSrpVerification(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "secretClient"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->B(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/math/BigInteger;)Ljava/security/Key;

    move-result-object v0

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    invoke-direct {p0, v5, v2, v3, v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->sendPppVerificationResult(ZIJ)V

    const-string v2, "w_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "enc_token"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hsm_sign_cert"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v3, 0xc

    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    array-length v4, p1

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p1, v1, v3, v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->aesCipherData([B[BILjava/security/Key;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [B

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->j(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->insertToken([B)J

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->mBiConsumer:Ljava/util/function/BiConsumer;

    invoke-interface {p0, v0, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "failure_count"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "back_off_time"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->sendPppVerificationResult(ZIJ)V

    :goto_0
    return-void
.end method

.method private sendPppVerificationResult(ZIJ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.kmxservice.escrowvault.VERIFY_PPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isSuccess"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p1, :cond_0

    const-string p1, "failure_count"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "back_off_time"

    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lp0/c;->b(Landroid/content/Context;)Lp0/c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lp0/c;->d(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OldPppResultReceiver onReceiveResult = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/d;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$OldPppResultReceiver;ILandroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
