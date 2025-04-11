.class public final Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubmitResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;
    }
.end annotation


# static fields
.field public static final BLOCK_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

.field private static final PARSER:Lcom/google/protobuf/o9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o9;"
        }
    .end annotation
.end field

.field public static final RESPONSE_MESSAGE_FIELD_NUMBER:I = 0x4

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x3

.field public static final VALID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private block_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

.field private memoizedIsInitialized:B

.field private volatile responseMessage_:Ljava/lang/Object;

.field private signature_:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

.field private valid_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    invoke-direct {v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;-><init>()V

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$1;

    invoke-direct {v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->memoizedIsInitialized:B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->valid_:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->responseMessage_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/d6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/d6;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/d6;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/d6;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;-><init>(Lcom/google/protobuf/d6;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    .line 2
    new-instance v0, Lcom/google/protobuf/lb;

    invoke-direct {v0}, Lcom/google/protobuf/lb;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->F()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->responseMessage_:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->signature_:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    move-result-object v5

    :cond_3
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->parser()Lcom/google/protobuf/o9;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v2

    check-cast v2, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    iput-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->signature_:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v2}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;)Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    invoke-virtual {v5}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->signature_:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->block_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object v5

    :cond_5
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->parser()Lcom/google/protobuf/o9;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v2

    check-cast v2, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    iput-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->block_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    invoke-virtual {v5}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->block_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->valid_:Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;-><init>(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$300(Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;)Lcom/google/protobuf/ob;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/f;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->responseMessage_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->block_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->responseMessage_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->signature_:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    return-void
.end method

.method public static getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/h3;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->k()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->valid_:Z

    return-void
.end method

.method public static bridge synthetic i()Lcom/google/protobuf/o9;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    return-object v0
.end method

.method public static newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 2
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 2
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i0;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Lcom/google/protobuf/i0;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 1

    .line 10
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom([BLcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/o9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o9;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getValid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getValid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->hasBlock()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->hasBlock()Z

    move-result v2

    if-ne v1, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->hasBlock()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getBlock()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getBlock()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->hasSignature()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->hasSignature()Z

    move-result v2

    if-ne v1, v2, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->hasSignature()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getSignature()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getSignature()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    move v1, v3

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v3

    :goto_5
    if-eqz v1, :cond_a

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ob;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_6

    :cond_a
    move v0, v3

    :goto_6
    return v0
.end method

.method public getBlock()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->block_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getBlockOrBuilder()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getBlock()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;
    .locals 0

    .line 3
    sget-object p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/o9;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o9;"
        }
    .end annotation

    sget-object p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->PARSER:Lcom/google/protobuf/o9;

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->responseMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->responseMessage_:Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->responseMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->responseMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->valid_:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/n0;->c(I)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->block_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getBlock()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/n0;->o(ILcom/google/protobuf/r8;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->signature_:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getSignature()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/n0;->o(ILcom/google/protobuf/r8;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getResponseMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->responseMessage_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {v0}, Lcom/google/protobuf/ob;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    return v0
.end method

.method public getSignature()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->signature_:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getSignatureOrBuilder()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$SignatureOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getSignature()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object p0

    return-object p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/ob;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public getValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->valid_:Z

    return p0
.end method

.method public hasBlock()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->block_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSignature()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->signature_:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/f;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getDescriptor()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getValid()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/g7;->b(Z)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->hasBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/n;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getBlock()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x25

    const/4 v2, 0x3

    const/16 v3, 0x35

    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/n;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getSignature()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    :cond_2
    const/16 v0, 0x25

    const/4 v2, 0x4

    const/16 v3, 0x35

    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/n;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {v0}, Lcom/google/protobuf/ob;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/f;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto;->l()Lcom/google/protobuf/q6;

    move-result-object p0

    const-class v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    const-class v1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/m8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->newBuilderForType()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/e6;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->newBuilderForType(Lcom/google/protobuf/e6;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/q8;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->newBuilderForType()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/e6;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;-><init>(Lcom/google/protobuf/e6;I)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/m8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/q8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    invoke-direct {p0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/n0;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->valid_:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n0;->y(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->block_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getBlock()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n0;->I(ILcom/google/protobuf/r8;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->signature_:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getSignature()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n0;->I(ILcom/google/protobuf/r8;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->getResponseMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->responseMessage_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/n0;ILjava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ob;->writeTo(Lcom/google/protobuf/n0;)V

    return-void
.end method
