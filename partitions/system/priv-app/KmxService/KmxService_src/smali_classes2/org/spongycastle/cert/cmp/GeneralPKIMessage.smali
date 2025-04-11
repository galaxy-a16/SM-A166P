.class public Lorg/spongycastle/cert/cmp/GeneralPKIMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final pkiMessage:Lorg/spongycastle/asn1/cmp/PKIMessage;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/cmp/GeneralPKIMessage;->pkiMessage:Lorg/spongycastle/asn1/cmp/PKIMessage;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/spongycastle/cert/cmp/GeneralPKIMessage;->parseBytes([B)Lorg/spongycastle/asn1/cmp/PKIMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/cmp/GeneralPKIMessage;-><init>(Lorg/spongycastle/asn1/cmp/PKIMessage;)V

    return-void
.end method

.method private static parseBytes([B)Lorg/spongycastle/asn1/cmp/PKIMessage;
    .locals 3

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cmp/PKIMessage;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIMessage;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lorg/spongycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lorg/bouncycastle/cert/a;->b(Ljava/lang/IllegalArgumentException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/spongycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Lorg/spongycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/google/protobuf/n;->d(Ljava/lang/ClassCastException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/spongycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getBody()Lorg/spongycastle/asn1/cmp/PKIBody;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/GeneralPKIMessage;->pkiMessage:Lorg/spongycastle/asn1/cmp/PKIMessage;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cmp/PKIMessage;->getBody()Lorg/spongycastle/asn1/cmp/PKIBody;

    move-result-object p0

    return-object p0
.end method

.method public getHeader()Lorg/spongycastle/asn1/cmp/PKIHeader;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/GeneralPKIMessage;->pkiMessage:Lorg/spongycastle/asn1/cmp/PKIMessage;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/spongycastle/asn1/cmp/PKIHeader;

    move-result-object p0

    return-object p0
.end method

.method public hasProtection()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/GeneralPKIMessage;->pkiMessage:Lorg/spongycastle/asn1/cmp/PKIMessage;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/spongycastle/asn1/cmp/PKIHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/cmp/PKIMessage;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/GeneralPKIMessage;->pkiMessage:Lorg/spongycastle/asn1/cmp/PKIMessage;

    return-object p0
.end method
