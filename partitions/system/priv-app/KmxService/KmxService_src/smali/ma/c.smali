.class public final synthetic Lma/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lma/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lma/c;->a:I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xa

    if-le p0, v0, :cond_1

    const/4 p0, 0x5

    goto :goto_0

    :cond_1
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    rsub-int/lit8 v0, p0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_2
    check-cast p1, Lja/a;

    iget p0, p1, Lja/a;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lia/d;

    iget-object p0, p1, Lia/d;->a:Ljava/lang/String;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;->getInstruction()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;->getInstruction()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getTransactionsList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node;

    new-instance p0, Lja/a;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node;->getIndex()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lja/a;-><init>(II)V

    return-object p0

    :pswitch_11
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_12
    check-cast p1, Lia/d;

    iget-object p0, p1, Lia/d;->b:Ljava/lang/Integer;

    return-object p0

    :pswitch_13
    check-cast p1, Lia/d;

    iget-object p0, p1, Lia/d;->b:Ljava/lang/Integer;

    return-object p0

    :pswitch_14
    check-cast p1, Lia/d;

    iget-object p0, p1, Lia/d;->b:Ljava/lang/Integer;

    return-object p0

    :pswitch_15
    check-cast p1, Lia/d;

    iget-object p0, p1, Lia/d;->a:Ljava/lang/String;

    return-object p0

    :pswitch_16
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :pswitch_17
    check-cast p1, Lia/d;

    iget-object p0, p1, Lia/d;->b:Ljava/lang/Integer;

    return-object p0

    :pswitch_18
    check-cast p1, Lja/a;

    new-instance p0, Lja/a;

    iget v0, p1, Lja/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iget p1, p1, Lja/a;->b:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0, v0, p1}, Lja/a;-><init>(II)V

    return-object p0

    :pswitch_19
    check-cast p1, Lia/e;

    iget-object p0, p1, Lia/e;->a:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    return-object p0

    :pswitch_1a
    check-cast p1, Lia/e;

    iget-object p0, p1, Lia/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    return-object p0

    :pswitch_1b
    check-cast p1, Lia/d;

    iget-object p0, p1, Lia/d;->a:Ljava/lang/String;

    return-object p0

    :pswitch_1c
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->a:Ljava/lang/String;

    return-object p0

    :goto_2
    check-cast p1, Lwa/a;

    iget-object p0, p1, Lwa/a;->b:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
