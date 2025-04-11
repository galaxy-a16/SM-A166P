.class Lorg/spongycastle/cms/CMSAuthenticatedDataParser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/cms/AuthAttributesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;Lorg/spongycastle/operator/DigestCalculatorProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/cms/CMSAuthenticatedDataParser;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cms/CMSAuthenticatedDataParser;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser$1;->this$0:Lorg/spongycastle/cms/CMSAuthenticatedDataParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthAttributes()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser$1;->this$0:Lorg/spongycastle/cms/CMSAuthenticatedDataParser;

    invoke-static {p0}, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->access$000(Lorg/spongycastle/cms/CMSAuthenticatedDataParser;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t parse authenticated attributes!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
