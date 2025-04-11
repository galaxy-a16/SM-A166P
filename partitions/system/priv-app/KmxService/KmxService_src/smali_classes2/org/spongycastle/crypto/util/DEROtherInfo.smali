.class public Lorg/spongycastle/crypto/util/DEROtherInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;
    }
.end annotation


# instance fields
.field private final sequence:Lorg/spongycastle/asn1/DERSequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/DERSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/util/DEROtherInfo;->sequence:Lorg/spongycastle/asn1/DERSequence;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/spongycastle/asn1/DERSequence;Lorg/spongycastle/crypto/util/DEROtherInfo$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/util/DEROtherInfo;-><init>(Lorg/spongycastle/asn1/DERSequence;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/util/DEROtherInfo;->sequence:Lorg/spongycastle/asn1/DERSequence;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method
