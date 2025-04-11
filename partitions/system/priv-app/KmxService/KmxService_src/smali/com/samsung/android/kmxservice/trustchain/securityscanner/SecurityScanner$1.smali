.class Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner$1;
.super Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(IILandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Chain service event handling is completed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustChain::SecurityScanner"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->a(Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->handleComplete(I)V

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_MEMBER_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->isSucceed(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    const-string p1, "member_dashboard_info"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->c(Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SYNC_CHAIN:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p0

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->isSucceed(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "save current timestamp & reset fail count"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->g(J)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->d()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->f(I)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->WRITE_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p0

    if-ne p0, p1, :cond_3

    const-string p0, "write data was completed"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
