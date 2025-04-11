.class Lorg/spongycastle/cms/CMSAuthEnvelopedData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/cms/CMSSecureReadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/cms/CMSAuthEnvelopedData;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cms/CMSAuthEnvelopedData;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/spongycastle/cms/CMSAuthEnvelopedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
