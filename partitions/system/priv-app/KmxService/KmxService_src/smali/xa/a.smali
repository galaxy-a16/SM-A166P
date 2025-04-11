.class public final synthetic Lxa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lxa/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lxa/a;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lwa/e;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p0

    iget-object v0, p1, Lwa/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p0

    iget-object p1, p1, Lwa/e;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lwa/e;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p0

    iget-object v0, p1, Lwa/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p0

    iget-object p1, p1, Lwa/e;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lwa/e;

    iget p0, p1, Lwa/e;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    new-instance p0, Lwa/a;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lwa/a;-><init>(ILcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)V

    return-object p0

    :goto_0
    check-cast p1, Ljava/util/Map$Entry;

    new-instance p0, Lwa/c;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lja/a;

    iget v0, v0, Lja/a;->a:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lja/a;

    iget v1, v1, Lja/a;->b:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {p0, v0, v1, p1}, Lwa/c;-><init>(II[B)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
