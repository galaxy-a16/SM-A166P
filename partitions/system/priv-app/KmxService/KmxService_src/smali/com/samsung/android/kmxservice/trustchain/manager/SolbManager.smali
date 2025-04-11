.class public Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;,
        Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::SolbManager"


# instance fields
.field private final mClientAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;

.field private final mPeerAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)V
    .locals 15

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;-><init>(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)V

    iput-object v7, v0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mClientAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    move-object v8, v1

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)V

    iput-object v1, v0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mPeerAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    return-void
.end method


# virtual methods
.method public destroyPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mPeerAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->destroy()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public getBlock(Ljava/lang/String;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mClientAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->get(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public needSync()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mPeerAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->needSync()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public readLocalData(Ljava/lang/String;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mPeerAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->localQuery(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public registerConsensusCallback(Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mPeerAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->registerConsensusCallback(Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public resetPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mPeerAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->reset()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public startPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mPeerAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->start()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public stopPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mPeerAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->stop()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public syncPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mPeerAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->sync()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public writeBlock(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->mClientAgent:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->write(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method
