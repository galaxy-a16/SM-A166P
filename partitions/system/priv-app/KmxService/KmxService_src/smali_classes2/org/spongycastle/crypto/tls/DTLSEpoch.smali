.class Lorg/spongycastle/crypto/tls/DTLSEpoch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private final epoch:I

.field private final replayWindow:Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

.field private sequenceNumber:J


# direct methods
.method public constructor <init>(ILorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->replayWindow:Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->sequenceNumber:J

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->epoch:I

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->cipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'cipher\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'epoch\' must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public allocateSequenceNumber()J
    .locals 4

    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->sequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->sequenceNumber:J

    return-wide v0
.end method

.method public getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->cipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    return-object p0
.end method

.method public getEpoch()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->epoch:I

    return p0
.end method

.method public getReplayWindow()Lorg/spongycastle/crypto/tls/DTLSReplayWindow;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->replayWindow:Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

    return-object p0
.end method

.method public getSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->sequenceNumber:J

    return-wide v0
.end method
