.class public final Lcom/google/protobuf/i6;
.super Lcom/google/protobuf/k6;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/protobuf/l3;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Ljava/lang/reflect/Method;

.field public final g:Z

.field public final h:Ljava/lang/reflect/Method;

.field public final i:Ljava/lang/reflect/Method;

.field public final j:Ljava/lang/reflect/Method;

.field public final k:Ljava/lang/reflect/Method;


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

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->g()Lcom/google/protobuf/l3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i6;->d:Lcom/google/protobuf/l3;

    iget-object v0, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/google/protobuf/m3;

    aput-object v4, v2, v3

    const-string v4, "valueOf"

    invoke-static {v0, v4, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i6;->e:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/google/protobuf/k6;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    const-string v2, "getValueDescriptor"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i6;->f:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lcom/google/protobuf/n3;->d:Lcom/google/protobuf/p3;

    invoke-virtual {p1}, Lcom/google/protobuf/p3;->h()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object p1

    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/i6;->g:Z

    if-eqz p1, :cond_1

    const-string p1, "get"

    const-string v0, "Value"

    invoke-static {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-static {p3, v2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/google/protobuf/i6;->h:Ljava/lang/reflect/Method;

    invoke-static {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/Class;

    aput-object v5, p3, v3

    invoke-static {p4, p1, p3}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/i6;->i:Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Class;

    aput-object v5, p3, v3

    aput-object v5, p3, v1

    invoke-static {p4, p1, p3}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/i6;->j:Ljava/lang/reflect/Method;

    const-string p1, "add"

    invoke-static {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    aput-object v5, p2, v3

    invoke-static {p4, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/i6;->k:Ljava/lang/reflect/Method;

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->a(Lcom/google/protobuf/GeneratedMessageV3;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/i6;->n(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/google/protobuf/d6;Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/protobuf/i6;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    check-cast p2, Lcom/google/protobuf/m3;

    invoke-virtual {p2}, Lcom/google/protobuf/m3;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p0, p0, Lcom/google/protobuf/i6;->k:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/google/protobuf/i6;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/k6;->c(Lcom/google/protobuf/d6;Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Lcom/google/protobuf/d6;ILjava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/protobuf/i6;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    check-cast p3, Lcom/google/protobuf/m3;

    invoke-virtual {p3}, Lcom/google/protobuf/m3;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    iget-object p0, p0, Lcom/google/protobuf/i6;->j:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v1

    iget-object p3, p0, Lcom/google/protobuf/i6;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/k6;->h(Lcom/google/protobuf/d6;ILjava/lang/Object;)V

    return-void
.end method

.method public final i(Lcom/google/protobuf/d6;I)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/google/protobuf/i6;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/google/protobuf/i6;->i:Ljava/lang/reflect/Method;

    invoke-static {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/google/protobuf/i6;->d:Lcom/google/protobuf/l3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/l3;->f(I)Lcom/google/protobuf/m3;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/k6;->i(Lcom/google/protobuf/d6;I)Ljava/lang/Object;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/i6;->f:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lcom/google/protobuf/d6;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k6;->l(Lcom/google/protobuf/d6;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/i6;->i(Lcom/google/protobuf/d6;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/google/protobuf/i6;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/google/protobuf/i6;->h:Ljava/lang/reflect/Method;

    invoke-static {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/google/protobuf/i6;->d:Lcom/google/protobuf/l3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/l3;->f(I)Lcom/google/protobuf/m3;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/k6;->n(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/i6;->f:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
