.class Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/cms/CMSSecureReadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/CMSEnvelopedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMSEnvelopedSecureReadable"
.end annotation


# instance fields
.field private algorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private readable:Lorg/spongycastle/cms/CMSReadable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/cms/CMSReadable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;->algorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;->readable:Lorg/spongycastle/cms/CMSReadable;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;->readable:Lorg/spongycastle/cms/CMSReadable;

    invoke-interface {p0}, Lorg/spongycastle/cms/CMSReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
