.class public final Lra/g;
.super Lu4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lpa/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lu4/a;-><init>(Lpa/c;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/16 p0, 0x1001

    return p0
.end method

.method public final b(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 0

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    move-result-object p0

    return-object p0
.end method
