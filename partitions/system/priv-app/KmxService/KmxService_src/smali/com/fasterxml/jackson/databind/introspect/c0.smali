.class public final synthetic Lcom/fasterxml/jackson/databind/introspect/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/fasterxml/jackson/databind/introspect/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lcom/fasterxml/jackson/databind/introspect/c0;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;

    return-object p0

    :pswitch_2
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->a:Ljava/lang/String;

    return-object p0

    :pswitch_3
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->a:Ljava/lang/String;

    return-object p0

    :pswitch_4
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;

    return-object p0

    :pswitch_5
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->a:Ljava/lang/String;

    return-object p0

    :pswitch_6
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->a:Ljava/lang/String;

    return-object p0

    :pswitch_7
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;

    return-object p0

    :pswitch_8
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->a:Ljava/lang/String;

    return-object p0

    :pswitch_9
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->a:Ljava/lang/String;

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    new-instance p0, Lia/e;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getSignature()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getBlock()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lia/e;-><init>(Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;Ljava/lang/Object;)V

    return-object p0

    :pswitch_b
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getSigner()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lia/e;

    iget-object p0, p1, Lia/e;->a:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getSigner()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lia/e;

    iget-object p0, p1, Lia/e;->a:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    return-object p0

    :pswitch_10
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;->getInstruction()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lja/a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node$Builder;

    move-result-object v0

    iget v1, p0, Lja/a;->a:I

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node$Builder;->setLevel(I)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node$Builder;

    move-result-object v0

    iget p0, p0, Lja/a;->b:I

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node$Builder;->setIndex(I)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setIndex(I)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setState(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getModelCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getModelCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lm6/c;

    const/4 p0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :pswitch_19
    check-cast p1, Ljava/lang/Integer;

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0

    :pswitch_1a
    check-cast p1, Ll6/k;

    iget-object p0, p1, Ll6/k;->b:Lf6/f;

    return-object p0

    :pswitch_1b
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->a:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
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
    .end packed-switch
.end method
