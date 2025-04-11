.class public Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromLivePeersException;
.super Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseException;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const-string v0, "No valid fragment of blocks "

    const-string v1, "-"

    const-string v2, " from any live peers."

    .line 1
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromLivePeersException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseException;-><init>(Ljava/lang/String;)V

    return-void
.end method
