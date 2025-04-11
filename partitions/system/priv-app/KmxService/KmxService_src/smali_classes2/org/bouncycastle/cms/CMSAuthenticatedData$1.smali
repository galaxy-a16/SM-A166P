.class Lorg/bouncycastle/cms/CMSAuthenticatedData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/AuthAttributesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthenticatedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSAuthenticatedData;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthAttributes()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedData;

    invoke-static {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedData;->access$000(Lorg/bouncycastle/cms/CMSAuthenticatedData;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    return-object p0
.end method

.method public isAead()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
