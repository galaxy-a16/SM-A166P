.class public final synthetic Lcom/fasterxml/jackson/databind/deser/std/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/std/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/databind/deser/std/m;->a:I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p1, Lia/d;

    iget-boolean p0, p1, Lia/d;->c:Z

    return p0

    :pswitch_1
    check-cast p1, Lia/d;

    iget-boolean p0, p1, Lia/d;->c:Z

    return p0

    :pswitch_2
    check-cast p1, Lia/d;

    iget-boolean p0, p1, Lia/d;->c:Z

    return p0

    :pswitch_3
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;->getValid()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_4
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;->getValid()Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;->getValid()Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;->getValid()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_7
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;->getValid()Z

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;->getValid()Z

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;->getValid()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_a
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;->getValid()Z

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;->getValid()Z

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getValid()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_d
    check-cast p1, Lra/f;

    iget-object p0, p1, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getValid()Z

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getValid()Z

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->a(Lcom/fasterxml/jackson/databind/introspect/c;)Z

    move-result p0

    return p0

    :goto_0
    check-cast p1, Lia/d;

    iget-boolean p0, p1, Lia/d;->c:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
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
