.class public final Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponseOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequestOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponseOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequestOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponseOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;,
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequestOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/p3;

.field private static final internal_static_CommitRequest_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_CommitRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_CommitResponse_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_CommitResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_FinalizeRequest_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_FinalizeRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_FinalizeResponse_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_FinalizeResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_SubmitRequest_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_SubmitRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_SubmitResponse_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_SubmitResponse_fieldAccessorTable:Lcom/google/protobuf/q6;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "\n\u000fconsensus.proto\u001a\u0011transaction.proto\u001a\u000bblock.proto\u001a\u000fsignature.proto\u001a\nseal.proto\"Q\n\rSubmitRequest\u0012!\n\u000btransaction\u0018\u0001 \u0001(\u000b2\u000c.Transaction\u0012\u001d\n\tsignature\u0018\u0002 \u0001(\u000b2\n.Signature\"o\n\u000eSubmitResponse\u0012\r\n\u0005valid\u0018\u0001 \u0001(\u0008\u0012\u0015\n\u0005block\u0018\u0002 \u0001(\u000b2\u0006.Block\u0012\u001d\n\tsignature\u0018\u0003 \u0001(\u000b2\n.Signature\u0012\u0018\n\u0010response_message\u0018\u0004 \u0001(\t\"=\n\u000fFinalizeRequest\u0012\u0015\n\u0005block\u0018\u0001 \u0001(\u000b2\u0006.Block\u0012\u0013\n\u0004seal\u0018\u0002 \u0001(\u000b2\u0005.Seal\";\n\u0010FinalizeResponse\u0012\r\n\u0005valid\u0018\u0001 \u0001(\u0008\u0012\u0018\n\u0010response_message\u0018\u0002 \u0001(\t\"\u001e\n\rCommitRequest\u0012\r\n\u0005valid\u0018\u0001 \u0001(\u0008\"9\n\u000eCommitResponse\u0012\r\n\u0005valid\u0018\u0001 \u0001(\u0008\u0012\u0018\n\u0010response_message\u0018\u0002 \u0001(\tBM\n;com.samsung.security.fabric.chain.core.data.event.consensusB\u000eConsensusProtob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$1;

    invoke-direct {v1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$1;-><init>()V

    const/4 v2, 0x4

    new-array v3, v2, [Lcom/google/protobuf/p3;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/p3;->j([Ljava/lang/String;[Lcom/google/protobuf/p3;Lcom/google/protobuf/o3;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_SubmitRequest_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v3, "Transaction"

    const-string v4, "Signature"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_SubmitRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_SubmitResponse_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v3, "Valid"

    const-string v5, "Block"

    const-string v6, "ResponseMessage"

    filled-new-array {v3, v5, v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_SubmitResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_FinalizeRequest_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v4, "Seal"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_FinalizeRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_FinalizeResponse_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_FinalizeResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_CommitRequest_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_CommitRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_CommitResponse_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_CommitResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->getDescriptor()Lcom/google/protobuf/p3;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->getDescriptor()Lcom/google/protobuf/p3;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto;->getDescriptor()Lcom/google/protobuf/p3;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto;->getDescriptor()Lcom/google/protobuf/p3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_CommitRequest_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_CommitRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_CommitResponse_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic d()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_CommitResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic e()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_FinalizeRequest_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic f()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_FinalizeRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic g()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_FinalizeResponse_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/p3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->descriptor:Lcom/google/protobuf/p3;

    return-object v0
.end method

.method public static bridge synthetic h()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_FinalizeResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic i()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_SubmitRequest_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic j()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_SubmitRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic k()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_SubmitResponse_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic l()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->internal_static_SubmitResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic m(Lcom/google/protobuf/p3;)V
    .locals 0

    sput-object p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->descriptor:Lcom/google/protobuf/p3;

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/q4;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->registerAllExtensions(Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/t4;)V
    .locals 0

    .line 2
    return-void
.end method
