.class public final Lra/h;
.super Lu4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lpa/c;)V
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v0

    iget v0, v0, Lga/a;->c:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lu4/a;-><init>(Lpa/c;I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/16 p0, 0x1004

    return p0
.end method

.method public final b(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 0

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;

    move-result-object p0

    return-object p0
.end method
