.class Lorg/spongycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;
    }
.end annotation


# static fields
.field private static DEFAULT_PLAINTEXT_LIMIT:I = 0x4000

.field static final TLS_HEADER_LENGTH_OFFSET:I = 0x3

.field static final TLS_HEADER_SIZE:I = 0x5

.field static final TLS_HEADER_TYPE_OFFSET:I = 0x0

.field static final TLS_HEADER_VERSION_OFFSET:I = 0x1


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private ciphertextLimit:I

.field private compressedLimit:I

.field private handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

.field private handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

.field private handshakeHashUpdater:Lorg/spongycastle/util/io/SimpleOutputStream;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private plaintextLimit:I

.field private readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private readSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

.field private readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private restrictReadVersion:Z

.field private writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private writeSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

.field private writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    new-instance v1, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    invoke-direct {v1, v0}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;-><init>(Lorg/spongycastle/crypto/tls/RecordStream$1;)V

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    new-instance v1, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    invoke-direct {v1, v0}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;-><init>(Lorg/spongycastle/crypto/tls/RecordStream$1;)V

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    new-instance v1, Lorg/spongycastle/crypto/tls/RecordStream$1;

    invoke-direct {v1, p0}, Lorg/spongycastle/crypto/tls/RecordStream$1;-><init>(Lorg/spongycastle/crypto/tls/RecordStream;)V

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHashUpdater:Lorg/spongycastle/util/io/SimpleOutputStream;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    new-instance p1, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {p1}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    return-void
.end method

.method public static synthetic access$100(Lorg/spongycastle/crypto/tls/RecordStream;)Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object p0
.end method

.method private static checkLength(IIS)V
    .locals 0

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method private static checkType(SS)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getBufferContents()[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method


# virtual methods
.method public checkRecordHeader([B)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    const/16 v1, 0x2f

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersionRaw([BI)I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    const/16 v2, 0x300

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    invoke-static {p1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result p1

    iget p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    const/16 v0, 0x16

    invoke-static {p1, p0, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    return-void

    :cond_3
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public decodeAndVerify(SLjava/io/InputStream;I)[B
    .locals 7

    invoke-static {p3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v4

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->nextValue(S)J

    move-result-wide v1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    const/4 v5, 0x0

    array-length v6, v4

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object p2

    array-length p3, p2

    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    const/16 v1, 0x16

    invoke-static {p3, v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    iget-object p3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {p3, v0}, Lorg/spongycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p3

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p3, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object p2

    :cond_0
    array-length p3, p2

    iget p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    const/16 v0, 0x1e

    invoke-static {p3, p0, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    array-length p0, p2

    const/4 p3, 0x1

    if-ge p0, p3, :cond_2

    const/16 p0, 0x17

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method public finaliseHandshake()V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    return-void

    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object p0
.end method

.method public getHandshakeHashUpdater()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHashUpdater:Lorg/spongycastle/util/io/SimpleOutputStream;

    return-object p0
.end method

.method public getPlaintextLimit()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    return p0
.end method

.method public getReadVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object p0
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    new-instance v0, Lorg/spongycastle/crypto/tls/DeferredHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DeferredHash;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    sget p1, Lorg/spongycastle/crypto/tls/RecordStream;->DEFAULT_PLAINTEXT_LIMIT:I

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    return-void
.end method

.method public notifyHelloComplete()V
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->notifyPRFDetermined()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method public prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->stopTracking()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method public readRecord()Z
    .locals 7

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readAllOrNothing(ILjava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    iget-boolean v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    const/16 v4, 0x2f

    const/4 v5, 0x1

    if-nez v3, :cond_2

    invoke-static {v0, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersionRaw([BI)I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    const/16 v6, 0x300

    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    invoke-static {v0, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v6, :cond_3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v6}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    const/4 v3, 0x3

    invoke-static {v0, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    iget v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    const/16 v4, 0x16

    invoke-static {v0, v3, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {p0, v2, v3, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    array-length v3, v0

    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processRecord(S[BII)V

    return v5

    :cond_4
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public receivedReadCipherSpec()V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    new-instance v0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;-><init>(Lorg/spongycastle/crypto/tls/RecordStream$1;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    return-void

    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public safeClose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public sentWriteCipherSpec()V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    new-instance v0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;-><init>(Lorg/spongycastle/crypto/tls/RecordStream$1;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    return-void

    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method public setPlaintextLimit(I)V
    .locals 0

    iput p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    add-int/lit16 p1, p1, 0x400

    iput p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    add-int/lit16 p1, p1, 0x400

    iput p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    return-void
.end method

.method public setReadVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method public setRestrictReadVersion(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    return-void
.end method

.method public setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method public writeRecord(S[BII)V
    .locals 11

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    iget v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    invoke-static {p4, v1, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    const/4 v1, 0x1

    if-ge p4, v1, :cond_2

    const/16 v2, 0x17

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v2, v3}, Lorg/spongycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    invoke-virtual {v3, v0}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->nextValue(S)J

    move-result-wide v5

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne v2, v3, :cond_3

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    move v7, p1

    move-object v8, p2

    move v9, p3

    move v10, p4

    invoke-interface/range {v4 .. v10}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v8

    array-length p2, v8

    add-int/lit16 p4, p4, 0x400

    invoke-static {p2, p4, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    const/4 v9, 0x0

    array-length v10, v8

    move v7, p1

    invoke-interface/range {v4 .. v10}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object p2

    :goto_1
    array-length p3, p2

    iget p4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    invoke-static {p3, p4, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    array-length p3, p2

    const/4 p4, 0x5

    add-int/2addr p3, p4

    new-array p3, p3, [B

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-static {p1, p3, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    array-length p1, p2

    const/4 v1, 0x3

    invoke-static {p1, p3, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    array-length p1, p2

    invoke-static {p2, v0, p3, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
