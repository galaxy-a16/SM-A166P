.class public Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;
.super Ljava/lang/Object;
.source "D2DHandshakeContext.java"


# instance fields
.field public final context_ptr:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ukey2_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Initiator:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->create_context(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->context_ptr:J

    return-void
.end method

.method private static native create_context(Z)J
.end method

.method public static forInitiator()Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;
    .locals 2

    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Initiator:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;-><init>(Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;)V

    return-object v0
.end method

.method public static forResponder()Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;
    .locals 2

    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Responder:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;-><init>(Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;)V

    return-object v0
.end method

.method private static native get_next_handshake_message(J)[B
.end method

.method private static native is_handshake_complete(J)Z
.end method

.method private static native parse_handshake_message(J[B)V
.end method

.method private static native to_connection_context(J)J
.end method


# virtual methods
.method public getNextHandshakeMessage()[B
    .locals 2

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->context_ptr:J

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->get_next_handshake_message(J)[B

    move-result-object p0

    return-object p0
.end method

.method public isHandshakeComplete()Z
    .locals 2

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->context_ptr:J

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->is_handshake_complete(J)Z

    move-result p0

    return p0
.end method

.method public parseHandshakeMessage([B)V
    .locals 2

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->context_ptr:J

    invoke-static {v0, v1, p1}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->parse_handshake_message(J[B)V

    return-void
.end method

.method public toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;
    .locals 3

    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;

    iget-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->context_ptr:J

    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;->to_connection_context(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContextV1;-><init>(J)V

    return-object v0
.end method
