.class public final Lcom/google/protobuf/l6;
.super Lcom/google/protobuf/k6;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/k6;-><init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;I)V

    iget-object p1, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Class;

    const-string v1, "newBuilder"

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/l6;->d:Ljava/lang/reflect/Method;

    const-string p1, "get"

    const-string v0, "Builder"

    invoke-static {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, p3

    invoke-static {p4, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/l6;->e:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/protobuf/d6;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/l6;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/k6;->c(Lcom/google/protobuf/d6;Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Lcom/google/protobuf/m8;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/l6;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m8;

    return-object p0
.end method

.method public final g(Lcom/google/protobuf/d6;I)Lcom/google/protobuf/m8;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p0, p0, Lcom/google/protobuf/l6;->e:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m8;

    return-object p0
.end method

.method public final h(Lcom/google/protobuf/d6;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/google/protobuf/l6;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/k6;->h(Lcom/google/protobuf/d6;ILjava/lang/Object;)V

    return-void
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/l6;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m8;

    check-cast p1, Lcom/google/protobuf/n8;

    invoke-interface {p0, p1}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/m8;->build()Lcom/google/protobuf/n8;

    move-result-object p0

    return-object p0
.end method
