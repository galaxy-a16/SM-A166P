.class public final synthetic Lma/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lma/e;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lma/e;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/d;->a:Lma/e;

    iput-object p2, p0, Lma/d;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    check-cast p1, Lia/e;

    iget-object v0, p0, Lma/d;->a:Lma/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Verify block with signature."

    const-string v2, "VALIDATOR"

    invoke-static {v2, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lia/e;->a:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getSigner()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lma/d;->b:Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    iget-object p1, p1, Lia/e;->b:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    iget-object v0, v0, Lma/e;->c:Lha/a;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lg2/m;->g([B)[B

    move-result-object p1

    invoke-interface {v0, p1, v1, p0}, Lha/a;->verify([B[B[B)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to verify."

    invoke-static {v2, p1, p0}, Lla/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return v5
.end method
