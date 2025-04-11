.class public Lorg/spongycastle/asn1/cmp/PKIConfirmContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private val:Lorg/spongycastle/asn1/ASN1Null;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/spongycastle/asn1/ASN1Null;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Null;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/spongycastle/asn1/ASN1Null;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIConfirmContent;
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Null;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Null;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;-><init>(Lorg/spongycastle/asn1/ASN1Null;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid object: "

    invoke-static {p0, v1}, Landroidx/activity/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/spongycastle/asn1/ASN1Null;

    return-object p0
.end method
