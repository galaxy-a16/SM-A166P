.class public Lcom/android/server/companion/securechannel/SecureChannel;
.super Ljava/lang/Object;
.source "SecureChannel.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAlias:Ljava/lang/String;

.field public final mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

.field public mClientInit:[B

.field public mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

.field public mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

.field public volatile mInProgress:Z

.field public final mInput:Ljava/io/InputStream;

.field public final mOutput:Ljava/io/OutputStream;

.field public final mPreSharedKey:[B

.field public mPskVerified:Z

.field public mRole:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

.field public volatile mStopped:Z

.field public mVerificationResult:I

.field public final mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;


# direct methods
.method public static synthetic $r8$lambda$G7X_V1dQ_Zhzvw4WLezoxSaC4tE(Lcom/android/server/companion/securechannel/SecureChannel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->lambda$start$0()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 51
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    .line 109
    new-instance v5, Lcom/android/server/companion/securechannel/AttestationVerifier;

    invoke-direct {v5, p4}, Lcom/android/server/companion/securechannel/AttestationVerifier;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/securechannel/SecureChannel;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;[BLcom/android/server/companion/securechannel/AttestationVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;[BLcom/android/server/companion/securechannel/AttestationVerifier;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 120
    iput-object p2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    .line 121
    iput-object p3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    .line 122
    iput-object p4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    .line 123
    iput-object p5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 3

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeHandshake()V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeAuthentication()V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 144
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    invoke-interface {v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onSecureConnection()V

    .line 147
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->receiveSecureMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    iget-boolean v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "CDM_SecureChannel"

    const-string v2, "Secure channel encountered an error."

    .line 156
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->close()V

    .line 158
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    invoke-interface {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->stop()V

    .line 180
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDM_SecureChannel"

    const-string v1, "Closing secure channel."

    .line 181
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 185
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->cleanUp(Ljava/lang/String;)V

    return-void
.end method

.method public final compareByteArray([B[B)I
    .locals 3

    const/4 p0, 0x0

    if-ne p1, p2, :cond_0

    return p0

    .line 578
    :cond_0
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    .line 579
    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0

    :cond_1
    move v0, p0

    .line 581
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 582
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_2

    sub-int/2addr v1, v2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method public final constructHandshakeInitMessage([B)[B
    .locals 2

    .line 556
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 557
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Initiator:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    invoke-virtual {v1, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 558
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 559
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public final constructToken(Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;[B)[B
    .locals 2

    const-string p0, "SHA-256"

    .line 564
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 565
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 566
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    .line 567
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 568
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 569
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 567
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public establishSecureConnection()V
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    const-string v1, "CDM_SecureChannel"

    if-eqz v0, :cond_0

    const-string p0, "Channel is already secure."

    .line 208
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    if-eqz v0, :cond_1

    const-string p0, "Channel has already started establishing secure connection."

    .line 212
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 217
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->initiateHandshake()V
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/BadHandleException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 220
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v1, "Failed to initiate handshake protocol."

    invoke-direct {v0, v1, p0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final exchangeAttestation()V
    .locals 6

    .line 499
    iget v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    const-string v1, "CDM_SecureChannel"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string p0, "Remote attestation was already verified."

    .line 500
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 505
    :cond_0
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v3, "Exchanging device attestation."

    .line 506
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->generateAlias()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    .line 511
    :cond_2
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->getSessionUnique()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;[B)[B

    move-result-object v3

    .line 512
    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->generateAttestationKeyPair(Ljava/lang/String;[B)V

    .line 513
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->getEncodedCertificateChain(Ljava/lang/String;)[B

    move-result-object v3

    .line 514
    sget-object v4, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->ATTESTATION:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 515
    invoke-virtual {p0, v4}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v3

    .line 518
    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    sget-object v5, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Initiator:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    if-ne v4, v5, :cond_3

    .line 519
    sget-object v5, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Responder:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    .line 520
    :cond_3
    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    .line 521
    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->getSessionUnique()[B

    move-result-object v4

    .line 518
    invoke-virtual {p0, v5, v4}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;[B)[B

    move-result-object v4

    .line 522
    iget-object v5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/companion/securechannel/AttestationVerifier;->verifyAttestation([B[B)I

    move-result v3

    iput v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    const/4 v3, 0x4

    .line 525
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    .line 526
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 527
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 528
    sget-object v4, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->AVF_RESULT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 529
    invoke-virtual {p0, v4}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v3

    .line 531
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 535
    iget p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    if-ne p0, v2, :cond_5

    if-eqz v0, :cond_4

    const-string p0, "Remote attestation was successfully verified."

    .line 540
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 536
    :cond_5
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to verify remote attestation."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 532
    :cond_6
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Remote device failed to verify local attestation."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final exchangeAuthentication()V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangePreSharedKey()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeAttestation()V

    :cond_1
    return-void
.end method

.method public final exchangeHandshake()V
    .locals 5

    .line 399
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    const-string v1, "CDM_SecureChannel"

    if-eqz v0, :cond_0

    const-string p0, "Ukey2 handshake is already completed."

    .line 400
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 405
    :cond_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v2

    const/4 v3, 0x1

    .line 408
    iput-boolean v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 411
    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->handleHandshakeCollision([B)[B

    move-result-object v2

    .line 414
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    if-nez v3, :cond_4

    .line 415
    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Responder:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    iput-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    .line 416
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->forResponder()Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    .line 419
    sget-boolean v3, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v4, "Receiving Ukey2 Client Init message"

    .line 420
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_1
    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    invoke-virtual {v4, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->parseHandshakeMessage([B)V

    if-eqz v3, :cond_2

    const-string v2, "Sending Ukey2 Server Init message"

    .line 426
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_2
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    .line 429
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->constructHandshakeInitMessage([B)[B

    move-result-object v2

    .line 428
    invoke-virtual {p0, v0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    if-eqz v3, :cond_3

    const-string v0, "Receiving Ukey2 Client Finish message"

    .line 433
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    sget-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->parseHandshakeMessage([B)V

    goto :goto_0

    .line 439
    :cond_4
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v3, "Receiving Ukey2 Server Init message"

    .line 440
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_5
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    invoke-virtual {v3, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->parseHandshakeMessage([B)V

    if-eqz v0, :cond_6

    const-string v0, "Sending Ukey2 Client Finish message"

    .line 446
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_6
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 453
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "Ukey2 Handshake completed successfully"

    .line 454
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_7
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    return-void

    :cond_8
    const-string p0, "Failed to complete Ukey2 Handshake"

    .line 458
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Ukey2 Handshake did not complete as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final exchangePreSharedKey()V
    .locals 5

    .line 477
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    const-string v1, "CDM_SecureChannel"

    if-eqz v0, :cond_0

    const-string v2, "Exchanging pre-shared keys."

    .line 478
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    sget-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->PRE_SHARED_KEY:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    invoke-virtual {p0, v3, v4}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;[B)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 481
    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v2

    .line 482
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Initiator:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    if-ne v3, v4, :cond_1

    .line 483
    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Responder:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    .line 484
    :cond_1
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    .line 482
    invoke-virtual {p0, v4, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;[B)[B

    move-result-object v3

    .line 486
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPskVerified:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const-string p0, "The pre-shared key was successfully authenticated."

    .line 493
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 489
    :cond_3
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to verify the hash of pre-shared key."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final generateAlias()Ljava/lang/String;
    .locals 1

    .line 592
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "secure-channel-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 593
    invoke-static {p0}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->aliasExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0
.end method

.method public final handleHandshakeCollision([B)[B
    .locals 2

    .line 361
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 363
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 364
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 368
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    if-eqz p1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "Detected a Ukey2 handshake role collision. Negotiating a role."

    const-string v0, "CDM_SecureChannel"

    .line 372
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->compareByteArray([B[B)I

    move-result p1

    if-gez p1, :cond_2

    const-string p1, "Assigned: Responder"

    .line 376
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 377
    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    return-object v1

    :cond_2
    const-string p1, "Assigned: Initiator; Discarding received Client Init"

    .line 380
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object p1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 386
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-eqz p1, :cond_3

    .line 390
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 391
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1

    .line 388
    :cond_3
    new-instance p0, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;

    const-string p1, "Failed to resolve Ukey2 handshake role collision."

    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final initiateHandshake()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    const-string v1, "CDM_SecureChannel"

    if-eqz v0, :cond_0

    const-string p0, "Ukey2 handshake is already completed."

    .line 339
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 343
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Initiator:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    .line 344
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->forInitiator()Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    .line 345
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    .line 348
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Sending Ukey2 Client Init message"

    .line 349
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    invoke-virtual {p0, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->constructHandshakeInitMessage([B)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    return-void
.end method

.method public final isSecured()Z
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 550
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPskVerified:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public isStopped()Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    return p0
.end method

.method public final readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B
    .locals 7

    .line 263
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CDM_SecureChannel"

    const-string v1, "Waiting to receive next secure message."

    .line 265
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "CDM_SecureChannel"

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting to receive next "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    monitor-enter v0

    const/4 v1, 0x6

    :try_start_0
    new-array v1, v1, [B

    .line 276
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v2, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 277
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 279
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/4 v4, 0x1

    const-wide v5, 0x7fffffffffffffffL

    if-ne v3, v4, :cond_4

    .line 287
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 297
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 298
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :try_start_1
    new-array v2, v2, [B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :try_start_2
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 310
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$smshouldEncrypt(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 311
    monitor-exit v0

    return-object v2

    .line 314
    :cond_2
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    invoke-virtual {p0, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decodeMessageFromPeer([B[B)[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p1

    .line 305
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v5, v6}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 306
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v1, "Payload is too large."

    invoke-direct {p0, v1, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 288
    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v5, v6}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 289
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected message type. Expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; Found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {v2}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->from(S)Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Skipping rest of data."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_4
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v5, v6}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 283
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string p1, "Secure channel version mismatch. Currently on version 1. Skipping rest of data."

    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 315
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final receiveSecureMessage()V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    const-string v1, "CDM_SecureChannel"

    if-nez v0, :cond_0

    const-string v0, "Received a message without a secure connection. Message will be ignored."

    .line 247
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not secure."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 254
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v0

    .line 255
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    invoke-interface {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onSecureMessageReceived([B)V
    :try_end_0
    .catch Lcom/android/server/companion/securechannel/SecureChannelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Ignoring received message."

    .line 257
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    monitor-enter v0

    const/4 v1, 0x6

    .line 321
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    .line 322
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S

    move-result v2

    .line 323
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 324
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 325
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$smshouldEncrypt(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    invoke-virtual {p1, p2, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encodeMessageToPeer([B[B)[B

    move-result-object p2

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 329
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p2

    .line 330
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 329
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 332
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 333
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 334
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendSecureMessage([B)V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/BadHandleException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 240
    new-instance p1, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to encrypt data."

    invoke-direct {p1, v0, p0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const-string p0, "CDM_SecureChannel"

    const-string p1, "Cannot send a message without a secure connection."

    .line 232
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Channel is not secured yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start()V
    .locals 2

    .line 130
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDM_SecureChannel"

    const-string v1, "Starting secure channel."

    .line 131
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/securechannel/SecureChannel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 167
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDM_SecureChannel"

    const-string v1, "Stopping secure channel."

    .line 168
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    return-void
.end method
