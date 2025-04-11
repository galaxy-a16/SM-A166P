.class public Lorg/spongycastle/dvcs/MessageImprintBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final digestCalculator:Lorg/spongycastle/operator/DigestCalculator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/DigestCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/dvcs/MessageImprintBuilder;->digestCalculator:Lorg/spongycastle/operator/DigestCalculator;

    return-void
.end method


# virtual methods
.method public build([B)Lorg/spongycastle/dvcs/MessageImprint;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/dvcs/MessageImprintBuilder;->digestCalculator:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance p1, Lorg/spongycastle/dvcs/MessageImprint;

    new-instance v0, Lorg/spongycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lorg/spongycastle/dvcs/MessageImprintBuilder;->digestCalculator:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object p0, p0, Lorg/spongycastle/dvcs/MessageImprintBuilder;->digestCalculator:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {p0}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {p1, v0}, Lorg/spongycastle/dvcs/MessageImprint;-><init>(Lorg/spongycastle/asn1/x509/DigestInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/dvcs/DVCSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to build MessageImprint: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
