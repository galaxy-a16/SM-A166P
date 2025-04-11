.class public Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;
.super Ljava/lang/Object;
.source "D2DConnectionContextV1.java"


# instance fields
.field public final contextPtr:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ukey2_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->contextPtr:J

    return-void
.end method

.method private static native decode_message_from_peer(J[B[B)[B
.end method

.method private static native encode_message_to_peer(J[B[B)[B
.end method

.method private static native get_session_unique(J)[B
.end method


# virtual methods
.method public decodeMessageFromPeer([B[B)[B
    .locals 2

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->contextPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->decode_message_from_peer(J[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public encodeMessageToPeer([B[B)[B
    .locals 2

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->contextPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->encode_message_to_peer(J[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSessionUnique()[B
    .locals 2

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->contextPtr:J

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;->get_session_unique(J)[B

    move-result-object p0

    return-object p0
.end method
