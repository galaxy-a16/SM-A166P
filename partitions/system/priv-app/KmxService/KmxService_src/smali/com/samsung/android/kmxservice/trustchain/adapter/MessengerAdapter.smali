.class public Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;
.super Lpa/c;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::MessengerAdapter"


# instance fields
.field private final mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lpa/c;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    return-void
.end method


# virtual methods
.method public publish(Ljava/lang/String;[B)Z
    .locals 2

    .line 1
    const-string v0, "message publish : "

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->publish(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    const-string p1, "TrustChain::MessengerAdapter"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public publish([B)Z
    .locals 1

    .line 2
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;->publish(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method
