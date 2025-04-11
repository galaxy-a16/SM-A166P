.class public final Lcom/google/protobuf/m6;
.super Lcom/google/protobuf/n6;
.source "SourceFile"


# instance fields
.field public final f:Lcom/google/protobuf/l3;

.field public final g:Ljava/lang/reflect/Method;

.field public final h:Ljava/lang/reflect/Method;

.field public final i:Z

.field public final j:Ljava/lang/reflect/Method;

.field public final k:Ljava/lang/reflect/Method;

.field public final l:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4

    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/n6;-><init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->g()Lcom/google/protobuf/l3;

    move-result-object p5

    iput-object p5, p0, Lcom/google/protobuf/m6;->f:Lcom/google/protobuf/l3;

    iget-object p5, p0, Lcom/google/protobuf/n6;->a:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/google/protobuf/m3;

    aput-object v3, v1, v2

    const-string v3, "valueOf"

    invoke-static {p5, v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    iput-object p5, p0, Lcom/google/protobuf/m6;->g:Ljava/lang/reflect/Method;

    iget-object p5, p0, Lcom/google/protobuf/n6;->a:Ljava/lang/Class;

    const-string v1, "getValueDescriptor"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {p5, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    iput-object p5, p0, Lcom/google/protobuf/m6;->h:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lcom/google/protobuf/n3;->d:Lcom/google/protobuf/p3;

    invoke-virtual {p1}, Lcom/google/protobuf/p3;->h()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object p1

    sget-object p5, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne p1, p5, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/m6;->i:Z

    if-eqz p1, :cond_1

    const-string p1, "get"

    const-string p5, "Value"

    invoke-static {p1, p2, p5}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {p3, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/google/protobuf/m6;->j:Ljava/lang/reflect/Method;

    invoke-static {p1, p2, p5}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Class;

    invoke-static {p4, p1, p3}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/m6;->k:Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, p5}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Class;

    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p3, p2, v2

    invoke-static {p4, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/m6;->l:Ljava/lang/reflect/Method;

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/google/protobuf/m6;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/m6;->j:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/google/protobuf/m6;->f:Lcom/google/protobuf/l3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/l3;->f(I)Lcom/google/protobuf/m3;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/n6;->b(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/m6;->h:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/google/protobuf/d6;Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/protobuf/m6;->i:Z

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

    iget-object p0, p0, Lcom/google/protobuf/m6;->l:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/google/protobuf/m6;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/n6;->f(Lcom/google/protobuf/d6;Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Lcom/google/protobuf/d6;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/google/protobuf/m6;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/m6;->k:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/google/protobuf/m6;->f:Lcom/google/protobuf/l3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/l3;->f(I)Lcom/google/protobuf/m3;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/n6;->m(Lcom/google/protobuf/d6;)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/m6;->h:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
