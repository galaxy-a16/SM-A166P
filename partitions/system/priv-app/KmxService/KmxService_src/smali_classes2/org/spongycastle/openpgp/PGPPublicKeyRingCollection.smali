.class public Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/spongycastle/util/Iterable<",
        "Lorg/spongycastle/openpgp/PGPPublicKeyRing;",
        ">;"
    }
.end annotation


# instance fields
.field private order:Ljava/util/List;

.field private pubRings:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->order:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/openpgp/PGPObjectFactory;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of p2, p1, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    new-instance p2, Ljava/lang/Long;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->order:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, " found where PGPPublicKeyRing expected"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/spongycastle/openpgp/PGPPublicKeyRing;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->order:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->order:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->order:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public static addPublicKeyRing(Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;Lorg/spongycastle/openpgp/PGPPublicKeyRing;)Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;
    .locals 3

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->order:Ljava/util/List;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/util/Map;Ljava/util/List;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Collection already contains a key with a keyID for the passed in ring."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removePublicKeyRing(Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;Lorg/spongycastle/openpgp/PGPPublicKeyRing;)Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;
    .locals 6

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->order:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/util/Map;Ljava/util/List;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Collection does not contain a key with a keyID for the passed in ring."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public contains(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public contains([B)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getPublicKey([B)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 3

    instance-of v0, p1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->order:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-virtual {v1, p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->encode(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getKeyRings()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKeyRing;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getKeyRings(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKeyRing;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings(Ljava/lang/String;ZZ)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getKeyRings(Ljava/lang/String;Z)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKeyRing;",
            ">;"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings(Ljava/lang/String;ZZ)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getKeyRings(Ljava/lang/String;ZZ)Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKeyRing;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-static {v3}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getKeysWithSignaturesBy(J)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getKeysWithSignaturesBy(J)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicKey([B)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey([B)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicKeyRing(J)Lorg/spongycastle/openpgp/PGPPublicKeyRing;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicKeyRing([B)Lorg/spongycastle/openpgp/PGPPublicKeyRing;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey([B)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKeyRing;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->pubRings:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->order:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
