.class public Lorg/spongycastle/pqc/crypto/DigestingStateAwareMessageSigner;
.super Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;
.source "SourceFile"


# instance fields
.field private final signer:Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;-><init>(Lorg/spongycastle/pqc/crypto/MessageSigner;Lorg/spongycastle/crypto/Digest;)V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/DigestingStateAwareMessageSigner;->signer:Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;

    return-void
.end method


# virtual methods
.method public getUpdatedPrivateKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/DigestingStateAwareMessageSigner;->signer:Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;

    invoke-interface {p0}, Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;->getUpdatedPrivateKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0
.end method
