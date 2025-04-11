.class public abstract Lorg/spongycastle/cms/bc/BcKEKRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/cms/KEKRecipient;


# instance fields
.field private unwrapper:Lorg/spongycastle/operator/SymmetricKeyUnwrapper;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/bc/BcSymmetricKeyUnwrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cms/bc/BcKEKRecipient;->unwrapper:Lorg/spongycastle/operator/SymmetricKeyUnwrapper;

    return-void
.end method


# virtual methods
.method public extractSecretKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/crypto/CipherParameters;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/cms/bc/BcKEKRecipient;->unwrapper:Lorg/spongycastle/operator/SymmetricKeyUnwrapper;

    invoke-interface {p0, p2, p3}, Lorg/spongycastle/operator/KeyUnwrapper;->generateUnwrappedKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/operator/GenericKey;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/cms/bc/CMSUtils;->getBcKey(Lorg/spongycastle/operator/GenericKey;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p0
    :try_end_0
    .catch Lorg/spongycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cms/CMSException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exception unwrapping key: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
