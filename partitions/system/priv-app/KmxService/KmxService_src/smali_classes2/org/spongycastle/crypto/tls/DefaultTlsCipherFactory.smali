.class public Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;
.super Lorg/spongycastle/crypto/tls/AbstractTlsCipherFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsCipherFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createAEADBlockCipher_AES_CCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .locals 1

    new-instance v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public createAEADBlockCipher_AES_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .locals 1

    new-instance v0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public createAEADBlockCipher_AES_OCB()Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    new-instance v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public createAEADBlockCipher_Camellia_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .locals 1

    new-instance v0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public createAESBlockCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public createAESCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 8

    new-instance v7, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v7
.end method

.method public createAESEngine()Lorg/spongycastle/crypto/BlockCipher;
    .locals 0

    new-instance p0, Lorg/spongycastle/crypto/engines/AESEngine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/AESEngine;-><init>()V

    return-object p0
.end method

.method public createCamelliaBlockCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaEngine()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method public createCamelliaCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 8

    new-instance v7, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v7
.end method

.method public createCamelliaEngine()Lorg/spongycastle/crypto/BlockCipher;
    .locals 0

    new-instance p0, Lorg/spongycastle/crypto/engines/CamelliaEngine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/CamelliaEngine;-><init>()V

    return-object p0
.end method

.method public createChaCha20Poly1305(Lorg/spongycastle/crypto/tls/TlsContext;)Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 0

    new-instance p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;)V

    return-object p0
.end method

.method public createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 4

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    const/16 v1, 0x10

    if-eq p2, v0, :cond_2

    const/16 v0, 0x67

    const/16 v2, 0xc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x68

    const/16 v3, 0x20

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    packed-switch p2, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createChaCha20Poly1305(Lorg/spongycastle/crypto/tls/TlsContext;)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, v3, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_Camellia_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1, v1, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_Camellia_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1, v3, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1, v3, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1, v1, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1, v3, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1, v1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1, v3, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1, v1, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1, v3, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0, p1, v1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAESCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0, p1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, v3, v2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_OCB(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_OCB(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, v1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4Cipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createNullCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsNullCipher;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createCipher_AES_CCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;
    .locals 7

    new-instance v6, Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_CCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_CCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v6
.end method

.method public createCipher_AES_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;
    .locals 7

    new-instance v6, Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v6
.end method

.method public createCipher_AES_OCB(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;
    .locals 8

    new-instance v7, Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_OCB()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_OCB()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    const/4 v6, 0x2

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;III)V

    return-object v7
.end method

.method public createCipher_Camellia_GCM(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;
    .locals 7

    new-instance v6, Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_Camellia_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_Camellia_GCM()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v6
.end method

.method public createDESedeBlockCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    new-instance p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lorg/spongycastle/crypto/engines/DESedeEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object p0
.end method

.method public createDESedeCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 8

    new-instance v7, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    const/16 v6, 0x18

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v7
.end method

.method public createHMACDigest(I)Lorg/spongycastle/crypto/Digest;
    .locals 1

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    const/4 v0, 0x4

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, v0, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x6

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public createNullCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsNullCipher;
    .locals 2

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V

    return-object v0
.end method

.method public createRC4Cipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsStreamCipher;
    .locals 9

    new-instance v8, Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4StreamCipher()Lorg/spongycastle/crypto/StreamCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4StreamCipher()Lorg/spongycastle/crypto/StreamCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IZ)V

    return-object v8
.end method

.method public createRC4StreamCipher()Lorg/spongycastle/crypto/StreamCipher;
    .locals 0

    new-instance p0, Lorg/spongycastle/crypto/engines/RC4Engine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/RC4Engine;-><init>()V

    return-object p0
.end method

.method public createSEEDBlockCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    new-instance p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lorg/spongycastle/crypto/engines/SEEDEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/SEEDEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object p0
.end method

.method public createSEEDCipher(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 8

    new-instance v7, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDBlockCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    const/16 v6, 0x10

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v7
.end method
