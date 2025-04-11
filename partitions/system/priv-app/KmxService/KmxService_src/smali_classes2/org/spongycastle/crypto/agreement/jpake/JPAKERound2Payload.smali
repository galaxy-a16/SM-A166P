.class public Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/math/BigInteger;

.field private final knowledgeProofForX2s:[Ljava/math/BigInteger;

.field private final participantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;[Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "participantId"

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knowledgeProofForX2s"

    invoke-static {p3, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->participantId:Ljava/lang/String;

    iput-object p2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->a:Ljava/math/BigInteger;

    array-length p1, p3

    invoke-static {p3, p1}, Lorg/spongycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->knowledgeProofForX2s:[Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->a:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getKnowledgeProofForX2s()[Ljava/math/BigInteger;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->knowledgeProofForX2s:[Ljava/math/BigInteger;

    array-length v0, p0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->participantId:Ljava/lang/String;

    return-object p0
.end method
