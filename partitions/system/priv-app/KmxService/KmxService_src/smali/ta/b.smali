.class public abstract Lta/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IILjava/util/HashMap;Ljava/util/HashMap;)[B
    .locals 5

    if-nez p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lg2/m;->g([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainInvalidMultiProofException;

    const-string p1, "Failed to verify merkle proof."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainInvalidMultiProofException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x2

    mul-int/2addr p1, v0

    new-instance v1, Lja/a;

    invoke-direct {v1, p0, p1}, Lja/a;-><init>(II)V

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lta/b;->a(IILjava/util/HashMap;Ljava/util/HashMap;)[B

    move-result-object v2

    :goto_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    new-instance v3, Lja/a;

    invoke-direct {v3, p0, p1}, Lja/a;-><init>(II)V

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p0, p1, p2, p3}, Lta/b;->a(IILjava/util/HashMap;Ljava/util/HashMap;)[B

    move-result-object p0

    :goto_1
    new-array p1, v0, [[B

    const/4 p2, 0x0

    aput-object v2, p1, p2

    aput-object p0, p1, v1

    invoke-static {p1}, Lg2/m;->h([[B)[B

    move-result-object p0

    return-object p0
.end method
