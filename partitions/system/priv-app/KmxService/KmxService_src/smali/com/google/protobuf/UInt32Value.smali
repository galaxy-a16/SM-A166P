.class public final Lcom/google/protobuf/UInt32Value;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t8;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/UInt32Value;

.field private static final PARSER:Lcom/google/protobuf/o9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o9;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private value_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/UInt32Value;

    invoke-direct {v0}, Lcom/google/protobuf/UInt32Value;-><init>()V

    sput-object v0, Lcom/google/protobuf/UInt32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt32Value;

    new-instance v0, Lcom/google/protobuf/gb;

    invoke-direct {v0}, Lcom/google/protobuf/gb;-><init>()V

    sput-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/UInt32Value;->value_:I

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/UInt32Value;->memoizedIsInitialized:B

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

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/d6;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/UInt32Value;->value_:I

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/google/protobuf/UInt32Value;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/d6;Lcom/google/protobuf/gb;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/UInt32Value;-><init>(Lcom/google/protobuf/d6;)V

    return-void
.end method

.method public static synthetic access$302(Lcom/google/protobuf/UInt32Value;I)I
    .locals 0

    iput p1, p0, Lcom/google/protobuf/UInt32Value;->value_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/UInt32Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/UInt32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt32Value;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/google/protobuf/ec;->k:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/hb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/UInt32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt32Value;

    invoke-virtual {v0}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/hb;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/hb;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/UInt32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt32Value;

    invoke-virtual {v0}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/hb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/hb;->d(Lcom/google/protobuf/UInt32Value;)V

    return-object v0
.end method

.method public static of(I)Lcom/google/protobuf/UInt32Value;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->newBuilder()Lcom/google/protobuf/hb;

    move-result-object v0

    iput p0, v0, Lcom/google/protobuf/hb;->b:I

    iget p0, v0, Lcom/google/protobuf/hb;->a:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/google/protobuf/hb;->a:I

    invoke-virtual {v0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-virtual {v0}, Lcom/google/protobuf/hb;->c()Lcom/google/protobuf/UInt32Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Lcom/google/protobuf/i0;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom([BLcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/UInt32Value;

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

    sget-object v0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/UInt32Value;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/google/protobuf/UInt32Value;

    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ob;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v3

    :cond_3
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/UInt32Value;
    .locals 0

    .line 3
    sget-object p0, Lcom/google/protobuf/UInt32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt32Value;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getDefaultInstanceForType()Lcom/google/protobuf/UInt32Value;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getDefaultInstanceForType()Lcom/google/protobuf/UInt32Value;

    move-result-object p0

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

    sget-object p0, Lcom/google/protobuf/UInt32Value;->PARSER:Lcom/google/protobuf/o9;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/UInt32Value;->value_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/n0;->s(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ob;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/ob;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/UInt32Value;->value_:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/f;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDescriptor()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getValue()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ob;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/f;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/ec;->l:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/UInt32Value;

    const-class v1, Lcom/google/protobuf/hb;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/google/protobuf/UInt32Value;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/UInt32Value;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/hb;
    .locals 0

    .line 4
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->newBuilder()Lcom/google/protobuf/hb;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/e6;)Lcom/google/protobuf/hb;
    .locals 0

    .line 5
    new-instance p0, Lcom/google/protobuf/hb;

    invoke-direct {p0, p1}, Lcom/google/protobuf/hb;-><init>(Lcom/google/protobuf/e6;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/m8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->newBuilderForType()Lcom/google/protobuf/hb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/e6;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UInt32Value;->newBuilderForType(Lcom/google/protobuf/e6;)Lcom/google/protobuf/hb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/q8;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->newBuilderForType()Lcom/google/protobuf/hb;

    move-result-object p0

    return-object p0
.end method

.method public newInstance(Lcom/google/protobuf/r6;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/protobuf/UInt32Value;

    invoke-direct {p0}, Lcom/google/protobuf/UInt32Value;-><init>()V

    return-object p0
.end method

.method public toBuilder()Lcom/google/protobuf/hb;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/protobuf/UInt32Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt32Value;

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/google/protobuf/hb;

    invoke-direct {p0}, Lcom/google/protobuf/hb;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/hb;

    invoke-direct {v0}, Lcom/google/protobuf/hb;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/hb;->d(Lcom/google/protobuf/UInt32Value;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/m8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/hb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/q8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/hb;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/n0;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/UInt32Value;->value_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n0;->P(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/UInt32Value;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ob;->writeTo(Lcom/google/protobuf/n0;)V

    return-void
.end method
