.class public Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private list:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public generate()Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;
    .locals 2

    new-instance v0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;-><init>([Lorg/spongycastle/bcpg/UserAttributeSubpacket;)V

    return-object v0
.end method

.method public setImageAttribute(I[B)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;->list:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/bcpg/attr/ImageAttribute;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/bcpg/attr/ImageAttribute;-><init>(I[B)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attempt to set null image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
