.class public final Lcom/google/protobuf/v1;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/w1;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lcom/google/protobuf/m7;

.field public e:Lcom/google/protobuf/d7;

.field public f:Lcom/google/protobuf/d7;

.field public g:Ljava/util/List;

.field public h:Lcom/google/protobuf/v9;

.field public i:Ljava/util/List;

.field public j:Lcom/google/protobuf/v9;

.field public k:Ljava/util/List;

.field public l:Lcom/google/protobuf/v9;

.field public m:Ljava/util/List;

.field public n:Lcom/google/protobuf/v9;

.field public p:Lcom/google/protobuf/DescriptorProtos$FileOptions;

.field public q:Lcom/google/protobuf/ba;

.field public t:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

.field public u:Lcom/google/protobuf/ba;

.field public v:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/v1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/v1;->c:Ljava/lang/Object;

    sget-object v1, Lcom/google/protobuf/l7;->c:Lcom/google/protobuf/l7;

    iput-object v1, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/d7;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/d7;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/google/protobuf/v1;->v:Ljava/lang/Object;

    .line 3
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->i()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->g()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->k()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->h()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->j()Lcom/google/protobuf/ba;

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->l()Lcom/google/protobuf/ba;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/v1;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/v1;->c:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/l7;->c:Lcom/google/protobuf/l7;

    iput-object v0, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/d7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/d7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    iput-object p1, p0, Lcom/google/protobuf/v1;->v:Ljava/lang/Object;

    .line 5
    sget-boolean p1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->i()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->g()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->k()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->h()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->j()Lcom/google/protobuf/ba;

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->l()Lcom/google/protobuf/ba;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d6;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public final build()Lcom/google/protobuf/n8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/v1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public final build()Lcom/google/protobuf/r8;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/v1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/v1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/v1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 4

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/google/protobuf/d6;Lcom/google/protobuf/q0;)V

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    invoke-interface {v1}, Lcom/google/protobuf/m7;->O()Lcom/google/protobuf/m7;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1102(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/google/protobuf/m7;)Lcom/google/protobuf/m7;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v2, v1, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    check-cast v2, Lcom/google/protobuf/h;

    iput-boolean v3, v2, Lcom/google/protobuf/h;->a:Z

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1202(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/google/protobuf/d7;)Lcom/google/protobuf/d7;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    check-cast v2, Lcom/google/protobuf/h;

    iput-boolean v3, v2, Lcom/google/protobuf/h;->a:Z

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1302(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/google/protobuf/d7;)Lcom/google/protobuf/d7;

    iget-object v1, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1402(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1502(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    if-nez v1, :cond_8

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1602(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    if-nez v1, :cond_a

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_3
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1702(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    if-eqz v1, :cond_12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/protobuf/v1;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1802(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_b
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/protobuf/v1;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1902(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v3, v3, 0x2

    :cond_c
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/protobuf/v1;->q:Lcom/google/protobuf/ba;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/v1;->p:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    goto :goto_4

    :cond_d
    invoke-virtual {v2}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    :goto_4
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$2002(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions;

    or-int/lit8 v3, v3, 0x4

    :cond_e
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/protobuf/v1;->u:Lcom/google/protobuf/ba;

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/google/protobuf/v1;->t:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    goto :goto_5

    :cond_f
    invoke-virtual {v2}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    :goto_5
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$2102(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    or-int/lit8 v3, v3, 0x8

    :cond_10
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/protobuf/v1;->v:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$2202(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v3, v3, 0x10

    :cond_11
    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$2376(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;I)I

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/v1;

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/d7;)Lcom/google/protobuf/d7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/d7;)Lcom/google/protobuf/d7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    :cond_0
    return-void
.end method

.method public final g()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v0, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/f3;->c:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final h()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v0, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final i()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v0, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/f3;->d:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    const-class v1, Lcom/google/protobuf/v1;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_2
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_5
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_7
    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    :cond_9
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_8
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v0

    :goto_9
    iget-object v2, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_a

    :cond_c
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_a
    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b

    :cond_d
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_b
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v1, v1, 0x200

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_c

    :cond_10
    move v1, v0

    :goto_c
    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/protobuf/v1;->q:Lcom/google/protobuf/ba;

    if-nez v1, :cond_11

    iget-object p0, p0, Lcom/google/protobuf/v1;->p:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-nez p0, :cond_12

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    goto :goto_d

    :cond_11
    invoke-virtual {v1}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    :cond_12
    :goto_d
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_13

    return v0

    :cond_13
    return v2
.end method

.method public final j()Lcom/google/protobuf/ba;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/v1;->q:Lcom/google/protobuf/ba;

    if-nez v0, :cond_2

    new-instance v1, Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v1;->p:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v1, p0, Lcom/google/protobuf/v1;->q:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/v1;->p:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/v1;->q:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public final k()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v0, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final l()Lcom/google/protobuf/ba;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/v1;->u:Lcom/google/protobuf/ba;

    if-nez v0, :cond_2

    new-instance v1, Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v1;->t:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v1, p0, Lcom/google/protobuf/v1;->u:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/v1;->t:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/v1;->u:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public final m(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V
    .locals 3

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1800(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1900(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/m7;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/m7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/protobuf/l7;

    iget-object v1, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    invoke-direct {v0, v1}, Lcom/google/protobuf/l7;-><init>(Lcom/google/protobuf/m7;)V

    iput-object v0, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1100(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/m7;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_5
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/d7;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/d7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/v1;->e()V

    iget-object v0, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1200(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/d7;

    move-result-object v1

    check-cast v0, Lcom/google/protobuf/w6;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/w6;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/d7;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/d7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/v1;->f()V

    iget-object v0, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1300(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/d7;

    move-result-object v1

    check-cast v0, Lcom/google/protobuf/w6;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/w6;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/v1;->d()V

    iget-object v0, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_5

    :cond_b
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->i()Lcom/google/protobuf/v9;

    move-result-object v0

    goto :goto_4

    :cond_c
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1400(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    if-nez v0, :cond_11

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    goto :goto_6

    :cond_f
    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_8

    :cond_11
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->g()Lcom/google/protobuf/v9;

    move-result-object v0

    goto :goto_7

    :cond_12
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1500(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_14
    :goto_8
    iget-object v0, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    if-nez v0, :cond_17

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1600(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1600(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    goto :goto_9

    :cond_15
    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    :cond_16
    iget-object v0, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1600(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_b

    :cond_17
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1600(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1600(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->k()Lcom/google/protobuf/v9;

    move-result-object v0

    goto :goto_a

    :cond_18
    move-object v0, v1

    :goto_a
    iput-object v0, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    goto :goto_b

    :cond_19
    iget-object v0, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1600(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_1a
    :goto_b
    iget-object v0, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1d

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    goto :goto_c

    :cond_1b
    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    :cond_1c
    iget-object v0, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_c
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_d

    :cond_1d
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->h()Lcom/google/protobuf/v9;

    move-result-object v1

    :cond_1e
    iput-object v1, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    goto :goto_d

    :cond_1f
    iget-object v0, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$1700(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_20
    :goto_d
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/v1;->q:Lcom/google/protobuf/ba;

    if-nez v1, :cond_22

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/protobuf/v1;->p:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v2

    if-eq v1, v2, :cond_21

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->j()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/y1;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/y1;->j(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    goto :goto_e

    :cond_21
    iput-object v0, p0, Lcom/google/protobuf/v1;->p:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    goto :goto_e

    :cond_22
    invoke-virtual {v1, v0}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    :goto_e
    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_23
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/v1;->u:Lcom/google/protobuf/ba;

    if-nez v1, :cond_25

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/protobuf/v1;->t:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v2

    if-eq v1, v2, :cond_24

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->l()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/v2;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/v2;->d(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;)V

    goto :goto_f

    :cond_24
    iput-object v0, p0, Lcom/google/protobuf/v1;->t:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    goto :goto_f

    :cond_25
    invoke-virtual {v1, v0}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    :goto_f
    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_26
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasSyntax()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->access$2200(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v1;->v:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/v1;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_27
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v1;->n(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v1;->m(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v1;->n(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v1;->m(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v1;->n(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public final n(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_7

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    goto/16 :goto_7

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->v:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->y()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/i0;->l(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->f()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->e()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    invoke-virtual {p1}, Lcom/google/protobuf/i0;->u()I

    move-result v3

    check-cast v2, Lcom/google/protobuf/w6;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/w6;->c(I)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->u()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->f()V

    iget-object v2, p0, Lcom/google/protobuf/v1;->f:Lcom/google/protobuf/d7;

    :goto_2
    check-cast v2, Lcom/google/protobuf/w6;

    goto :goto_4

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->y()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/i0;->l(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->e()V

    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->e()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    invoke-virtual {p1}, Lcom/google/protobuf/i0;->u()I

    move-result v3

    check-cast v2, Lcom/google/protobuf/w6;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/w6;->c(I)V

    goto :goto_3

    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/i0;->k(I)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->u()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->e()V

    iget-object v2, p0, Lcom/google/protobuf/v1;->e:Lcom/google/protobuf/d7;

    goto :goto_2

    :goto_4
    invoke-virtual {v2, v1}, Lcom/google/protobuf/w6;->c(I)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/v1;->l()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/v1;->j()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    goto/16 :goto_0

    :sswitch_7
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/v1;->n:Lcom/google/protobuf/v9;

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/protobuf/v1;->a:I

    goto :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :cond_2
    :goto_5
    iget-object v2, p0, Lcom/google/protobuf/v1;->m:Ljava/util/List;

    goto :goto_6

    :sswitch_8
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/v1;->l:Lcom/google/protobuf/v9;

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/protobuf/v1;->a:I

    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/v1;->k:Ljava/util/List;

    goto :goto_6

    :sswitch_9
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/v1;->j:Lcom/google/protobuf/v9;

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/protobuf/v1;->a:I

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/v1;->i:Ljava/util/List;

    goto :goto_6

    :sswitch_a
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/v1;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->d()V

    iget-object v2, p0, Lcom/google/protobuf/v1;->g:Ljava/util/List;

    :goto_6
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    new-instance v2, Lcom/google/protobuf/l7;

    iget-object v3, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    invoke-direct {v2, v3}, Lcom/google/protobuf/l7;-><init>(Lcom/google/protobuf/m7;)V

    iput-object v2, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    iget v2, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protobuf/v1;->a:I

    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/v1;->d:Lcom/google/protobuf/m7;

    invoke-interface {v2, v1}, Lcom/google/protobuf/m7;->y(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/v1;->a:I

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/v1;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/v1;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/v1;->a:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_7
    if-nez v1, :cond_0

    :sswitch_e
    move v0, v2

    goto/16 :goto_0

    :goto_8
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    throw p1

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d6;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method
