.class Lorg/bouncycastle/cms/CMSSignedData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/CMSTypedData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSSignedData;

.field final synthetic val$signedContent:Lorg/bouncycastle/cms/CMSProcessable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/cms/CMSProcessable;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData$1;->this$0:Lorg/bouncycastle/cms/CMSSignedData;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedData$1;->val$signedContent:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSSignedData$1;->val$signedContent:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {p0}, Lorg/bouncycastle/cms/CMSProcessable;->getContent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSSignedData$1;->this$0:Lorg/bouncycastle/cms/CMSSignedData;

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSSignedData$1;->val$signedContent:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {p0, p1}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    return-void
.end method
