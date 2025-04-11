.class public final Lya/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lpa/a;

.field public final c:Lpa/c;

.field public d:Lo2/i;

.field public e:Lna/b;

.field public f:Lna/d;

.field public g:Lcom/samsung/security/fabric/chain/core/manager/sync/d;

.field public h:Lma/a;

.field public i:Lka/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lha/a;Lpa/a;Lpa/c;Lpa/d;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lya/b;->a:Ljava/util/HashMap;

    iput-object p4, p0, Lya/b;->b:Lpa/a;

    iput-object p5, p0, Lya/b;->c:Lpa/c;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v0

    iget v4, v0, Lga/a;->c:I

    iget v5, v0, Lga/a;->d:I

    iget v3, v0, Lga/a;->b:I

    iget v6, v0, Lga/a;->e:I

    iget v7, v0, Lga/a;->f:I

    iget-boolean v8, v0, Lga/a;->g:Z

    new-instance v0, Lga/a;

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lga/a;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->setConfiguration(Lga/a;)V

    new-instance p2, Lo2/i;

    new-instance v2, Lxa/b;

    invoke-direct {v2, p1}, Lxa/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Lxa/e;

    invoke-direct {v3, p1}, Lxa/e;-><init>(Landroid/content/Context;)V

    new-instance v4, Lxa/c;

    invoke-direct {v4, p1}, Lxa/c;-><init>(Landroid/content/Context;)V

    new-instance v5, Lt6/a;

    invoke-direct {v5, p1}, Lt6/a;-><init>(Landroid/content/Context;)V

    new-instance v6, Lxa/d;

    invoke-direct {v6, p1}, Lxa/d;-><init>(Landroid/content/Context;)V

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lo2/i;-><init>(Lxa/b;Lxa/e;Lxa/c;Lt6/a;Lxa/d;)V

    iput-object p2, p0, Lya/b;->d:Lo2/i;

    new-instance p1, Lna/b;

    invoke-direct {p1, p2}, Lna/b;-><init>(Lo2/i;)V

    iput-object p1, p0, Lya/b;->e:Lna/b;

    new-instance v5, Lna/d;

    invoke-direct {v5, p3, p4, p2}, Lna/d;-><init>(Lha/a;Lpa/a;Lo2/i;)V

    iput-object v5, p0, Lya/b;->f:Lna/d;

    new-instance p1, Lcom/samsung/security/fabric/chain/core/manager/sync/d;

    iget-object v4, p0, Lya/b;->e:Lna/b;

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/security/fabric/chain/core/manager/sync/d;-><init>(Lha/a;Lpa/a;Lpa/c;Lna/b;Lna/d;)V

    iput-object p1, p0, Lya/b;->g:Lcom/samsung/security/fabric/chain/core/manager/sync/d;

    new-instance p1, Lma/a;

    iget-object p2, p0, Lya/b;->e:Lna/b;

    new-instance v0, Lma/h;

    iget-object v1, p0, Lya/b;->d:Lo2/i;

    iget-object v2, v1, Lo2/i;->e:Ljava/lang/Object;

    check-cast v2, Lqa/b;

    iget-object v1, v1, Lo2/i;->d:Ljava/lang/Object;

    check-cast v1, Lt6/a;

    invoke-direct {v0, v2, v1}, Lma/h;-><init>(Lqa/b;Lt6/a;)V

    invoke-direct {p1, p3, p2, v0, p4}, Lma/a;-><init>(Lha/a;Lna/b;Lma/h;Lpa/a;)V

    iput-object p1, p0, Lya/b;->h:Lma/a;

    new-instance p1, Lka/a;

    iget-object p2, p0, Lya/b;->f:Lna/d;

    iget-object p3, p0, Lya/b;->e:Lna/b;

    invoke-direct {p1, p5, p4, p2, p3}, Lka/a;-><init>(Lpa/c;Lpa/a;Lna/d;Lna/b;)V

    iput-object p1, p0, Lya/b;->i:Lka/a;

    new-instance p1, Lka/h;

    iget-object p2, p0, Lya/b;->h:Lma/a;

    invoke-direct {p1, p6, p2, p5}, Lka/h;-><init>(Lpa/d;Lma/a;Lpa/c;)V

    invoke-virtual {p0, p1}, Lya/b;->a(Lka/e;)V

    new-instance p1, Lka/b;

    iget-object p2, p0, Lya/b;->e:Lna/b;

    iget-object p3, p0, Lya/b;->f:Lna/d;

    invoke-direct {p1, p2, p3, p5}, Lka/b;-><init>(Lna/b;Lna/d;Lpa/c;)V

    invoke-virtual {p0, p1}, Lya/b;->a(Lka/e;)V

    iget-object p1, p0, Lya/b;->i:Lka/a;

    invoke-virtual {p0, p1}, Lya/b;->a(Lka/e;)V

    new-instance p1, Lka/g;

    iget-object p2, p0, Lya/b;->e:Lna/b;

    invoke-direct {p1, p2, p5}, Lka/g;-><init>(Lna/b;Lpa/c;)V

    invoke-virtual {p0, p1}, Lya/b;->a(Lka/e;)V

    new-instance p1, Lka/i;

    iget-object p2, p0, Lya/b;->g:Lcom/samsung/security/fabric/chain/core/manager/sync/d;

    invoke-direct {p1, p2, p5}, Lka/i;-><init>(Lcom/samsung/security/fabric/chain/core/manager/sync/d;Lpa/c;)V

    invoke-virtual {p0, p1}, Lya/b;->a(Lka/e;)V

    new-instance p1, Lka/c;

    iget-object p2, p0, Lya/b;->e:Lna/b;

    invoke-direct {p1, p2, p5}, Lka/c;-><init>(Lna/b;Lpa/c;)V

    invoke-virtual {p0, p1}, Lya/b;->a(Lka/e;)V

    new-instance p1, Lka/d;

    iget-object p2, p0, Lya/b;->e:Lna/b;

    invoke-direct {p1, p2, p5}, Lka/d;-><init>(Lna/b;Lpa/c;)V

    invoke-virtual {p0, p1}, Lya/b;->a(Lka/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lka/e;)V
    .locals 1

    invoke-interface {p1}, Lpa/e;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lya/b;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lya/b;->d:Lo2/i;

    iget-object v0, v0, Lo2/i;->a:Ljava/lang/Object;

    check-cast v0, Lqa/a;

    invoke-virtual {v0}, Lqa/a;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lqa/a;->a()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v0

    iget-object p0, p0, Lya/b;->b:Lpa/a;

    invoke-interface {p0}, Lpa/a;->getPeerStatusList()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ln0/d;

    invoke-direct {v1, p0}, Ln0/d;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Ln0/d;->a()I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final c(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2

    iget-object p0, p0, Lya/b;->d:Lo2/i;

    iget-object p0, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast p0, Lqa/b;

    invoke-virtual {p0, p1}, Lqa/b;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoSuchKeyException;

    const-string p1, "No match for the key."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoSuchKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()V
    .locals 3

    const-string v0, "SDK_PEER"

    const-string v1, "Start listening incoming events from the messenger."

    invoke-static {v0, v1}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lya/b;->d:Lo2/i;

    iget-object v1, v1, Lo2/i;->a:Ljava/lang/Object;

    check-cast v1, Lqa/a;

    invoke-virtual {v1}, Lqa/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "No genesis block; run init."

    invoke-static {v0, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lya/b;->d:Lo2/i;

    iget-object v0, v0, Lo2/i;->a:Ljava/lang/Object;

    check-cast v0, Lqa/a;

    invoke-virtual {v0}, Lqa/a;->b()V

    :cond_0
    iget-object v0, p0, Lya/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpa/e;

    iget-object v2, p0, Lya/b;->c:Lpa/c;

    invoke-virtual {v2, v1}, Lpa/c;->subscribe(Lpa/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method
