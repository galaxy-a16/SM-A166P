.class Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent$ConsensusCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lka/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConsensusCallback"
.end annotation


# instance fields
.field runnableAfterConsensus:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent$ConsensusCallback;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent$ConsensusCallback;->runnableAfterConsensus:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    const-string v0, "ConsensusCallback, consensus finished."

    const-string v1, "TrustChain::SolbManager::PeerAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent$ConsensusCallback;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->j(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lya/b;

    move-result-object v0

    iget-object v0, v0, Lya/b;->i:Lka/a;

    const/4 v2, 0x0

    iput-object v2, v0, Lka/e;->b:Lka/f;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent$ConsensusCallback;->runnableAfterConsensus:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ConsensusCallback|onComplete"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
