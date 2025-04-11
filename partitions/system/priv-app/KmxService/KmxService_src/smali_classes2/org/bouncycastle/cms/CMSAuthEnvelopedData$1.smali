.class Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/CMSSecureReadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

.field final synthetic val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getEncryptedContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
