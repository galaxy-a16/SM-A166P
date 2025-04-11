.class public abstract Lka/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/e;


# instance fields
.field public final a:Lpa/c;

.field public b:Lka/f;


# direct methods
.method public constructor <init>(Lpa/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lka/e;->a:Lpa/c;

    return-void
.end method

.method public static h()Z
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v0

    iget-boolean v0, v0, Lga/a;->g:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    .locals 3

    iget-object v0, p0, Lka/e;->a:Lpa/c;

    :try_start_0
    invoke-virtual {p0, p2}, Lka/e;->k(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;

    move-result-object p2

    invoke-virtual {p0, p2}, Lka/e;->e(Lcom/google/protobuf/GeneratedMessageV3;)V

    invoke-virtual {p0, p2}, Lka/e;->g(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/GeneratedMessageV3;

    move-result-object p2

    invoke-virtual {p0}, Lka/e;->f()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/protobuf/f;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lpa/c;->publish(Ljava/lang/String;ILcom/google/protobuf/ByteString;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v1, "HANDLER"

    const-string v2, "Failed to handle request."

    invoke-static {v1, v2, p2}, Lla/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lka/e;->d(Ljava/lang/Exception;)Lcom/google/protobuf/GeneratedMessageV3;

    move-result-object p2

    invoke-virtual {p0}, Lka/e;->f()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/protobuf/f;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lpa/c;->publish(Ljava/lang/String;ILcom/google/protobuf/ByteString;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lka/e;->j()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lka/e;->j()V

    throw p1
.end method

.method public abstract d(Ljava/lang/Exception;)Lcom/google/protobuf/GeneratedMessageV3;
.end method

.method public final e(Lcom/google/protobuf/GeneratedMessageV3;)V
    .locals 1

    invoke-virtual {p0, p1}, Lka/e;->i(Lcom/google/protobuf/GeneratedMessageV3;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainMessageNotWellFormedException;

    invoke-virtual {p1}, Lcom/google/protobuf/c;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid request format: "

    invoke-static {v0, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainMessageNotWellFormedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract f()I
.end method

.method public abstract g(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/GeneratedMessageV3;
.end method

.method public abstract i(Lcom/google/protobuf/GeneratedMessageV3;)Z
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lka/e;->b:Lka/f;

    if-eqz v0, :cond_0

    const-string v0, "HANDLER"

    const-string v1, "Run registered callback."

    invoke-static {v0, v1}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lka/e;->b:Lka/f;

    invoke-interface {p0}, Lka/f;->onComplete()V

    :cond_0
    return-void
.end method

.method public abstract k(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
.end method
