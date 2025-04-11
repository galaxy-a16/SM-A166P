.class public final Lcom/google/protobuf/s0;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/z0;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/util/List;

.field public d:Lcom/google/protobuf/v9;

.field public e:Ljava/util/List;

.field public f:Lcom/google/protobuf/v9;

.field public g:Ljava/util/List;

.field public h:Lcom/google/protobuf/v9;

.field public i:Ljava/util/List;

.field public j:Lcom/google/protobuf/v9;

.field public k:Ljava/util/List;

.field public l:Lcom/google/protobuf/v9;

.field public m:Ljava/util/List;

.field public n:Lcom/google/protobuf/v9;

.field public p:Lcom/google/protobuf/DescriptorProtos$MessageOptions;

.field public q:Lcom/google/protobuf/ba;

.field public t:Ljava/util/List;

.field public u:Lcom/google/protobuf/v9;

.field public v:Lcom/google/protobuf/m7;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/s0;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/l7;->c:Lcom/google/protobuf/l7;

    iput-object v0, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/s0;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    sget-object p1, Lcom/google/protobuf/l7;->c:Lcom/google/protobuf/l7;

    iput-object p1, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->maybeForceBuilderInitialization()V

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
    invoke-virtual {p0}, Lcom/google/protobuf/s0;->c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/s0;->c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/s0;->c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/s0;->c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 3

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/google/protobuf/d6;Lcom/google/protobuf/q0;)V

    iget-object v1, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/s0;->a:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4602(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/s0;->a:I

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4702(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/protobuf/s0;->a:I

    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4802(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/protobuf/s0;->a:I

    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_3
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4902(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    if-nez v1, :cond_9

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/protobuf/s0;->a:I

    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_4
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5002(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    if-nez v1, :cond_b

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/protobuf/s0;->a:I

    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_5
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5102(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    if-nez v1, :cond_d

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/protobuf/s0;->a:I

    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_6
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5202(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    invoke-interface {v1}, Lcom/google/protobuf/m7;->O()Lcom/google/protobuf/m7;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/protobuf/s0;->a:I

    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5302(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/m7;)Lcom/google/protobuf/m7;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    if-eqz v1, :cond_12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/protobuf/s0;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5402(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_7
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/ba;

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    goto :goto_8

    :cond_10
    invoke-virtual {v1}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    :goto_8
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5502(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/DescriptorProtos$MessageOptions;)Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    or-int/lit8 v2, v2, 0x2

    :cond_11
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5676(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;I)I

    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/s0;

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    :cond_0
    return-void
.end method

.method public final e()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v2, v2, 0x10

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

    iput-object v0, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final f()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v2, v2, 0x4

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

    iput-object v0, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final g()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

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

    iput-object v0, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/f3;->e:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final h()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v2, v2, 0x2

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

    iput-object v0, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final i()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v2, v2, 0x8

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

    iput-object v0, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/f3;->f:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const-class v1, Lcom/google/protobuf/s0;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_2
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_5
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_7
    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    :cond_9
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_8
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v0

    :goto_9
    iget-object v2, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_a

    :cond_c
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_a
    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b

    :cond_d
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_b
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    move v1, v0

    :goto_c
    iget-object v2, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_d

    :cond_10
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_d
    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_e

    :cond_11
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_e
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_12

    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    move v1, v0

    :goto_f
    iget-object v2, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_10

    :cond_14
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_10
    if-ge v1, v2, :cond_17

    iget-object v2, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_11

    :cond_15
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_11
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_17
    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_12

    :cond_18
    move v1, v0

    :goto_12
    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/ba;

    if-nez v1, :cond_19

    iget-object p0, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    if-nez p0, :cond_1a

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    goto :goto_13

    :cond_19
    invoke-virtual {v1}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    :cond_1a
    :goto_13
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_1b

    return v0

    :cond_1b
    return v2
.end method

.method public final j()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

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

    iput-object v0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final k()Lcom/google/protobuf/ba;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/ba;

    if-nez v0, :cond_2

    new-instance v1, Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v1, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public final l()Lcom/google/protobuf/v9;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

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

    iput-object v0, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public final m(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V
    .locals 4

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5400(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->h()Lcom/google/protobuf/v9;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4600(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_5

    :cond_a
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->f()Lcom/google/protobuf/v9;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4700(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    if-nez v0, :cond_10

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    goto :goto_6

    :cond_e
    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_8

    :cond_10
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->i()Lcom/google/protobuf/v9;

    move-result-object v0

    goto :goto_7

    :cond_11
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4800(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_13
    :goto_8
    iget-object v0, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    goto :goto_9

    :cond_14
    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    :cond_15
    iget-object v0, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_b

    :cond_16
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->e()Lcom/google/protobuf/v9;

    move-result-object v0

    goto :goto_a

    :cond_17
    move-object v0, v1

    :goto_a
    iput-object v0, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    goto :goto_b

    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$4900(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_19
    :goto_b
    iget-object v0, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    goto :goto_c

    :cond_1a
    invoke-virtual {p0}, Lcom/google/protobuf/s0;->d()V

    iget-object v0, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_c
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_e

    :cond_1b
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->g()Lcom/google/protobuf/v9;

    move-result-object v0

    goto :goto_d

    :cond_1c
    move-object v0, v1

    :goto_d
    iput-object v0, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    goto :goto_e

    :cond_1d
    iget-object v0, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5000(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_1e
    :goto_e
    iget-object v0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    if-nez v0, :cond_21

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5100(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5100(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    goto :goto_f

    :cond_1f
    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    :cond_20
    iget-object v0, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5100(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_f
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_11

    :cond_21
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5100(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5100(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->j()Lcom/google/protobuf/v9;

    move-result-object v0

    goto :goto_10

    :cond_22
    move-object v0, v1

    :goto_10
    iput-object v0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    goto :goto_11

    :cond_23
    iget-object v0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5100(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_24
    :goto_11
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    iget-object v2, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/ba;

    if-nez v2, :cond_26

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    if-eq v2, v3, :cond_25

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/protobuf/s0;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->k()Lcom/google/protobuf/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/g2;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/g2;->j(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)V

    goto :goto_12

    :cond_25
    iput-object v0, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    goto :goto_12

    :cond_26
    invoke-virtual {v2, v0}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    :goto_12
    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_27
    iget-object v0, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    if-nez v0, :cond_2a

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5200(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5200(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    goto :goto_13

    :cond_28
    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_29

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    :cond_29
    iget-object v0, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5200(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_13
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_14

    :cond_2a
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5200(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v1, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5200(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->l()Lcom/google/protobuf/v9;

    move-result-object v1

    :cond_2b
    iput-object v1, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    goto :goto_14

    :cond_2c
    iget-object v0, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5200(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_2d
    :goto_14
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5300(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/m7;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5300(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/m7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    goto :goto_15

    :cond_2e
    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2f

    new-instance v0, Lcom/google/protobuf/l7;

    iget-object v1, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    invoke-direct {v0, v1}, Lcom/google/protobuf/l7;-><init>(Lcom/google/protobuf/m7;)V

    iput-object v0, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    iget v0, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/s0;->a:I

    :cond_2f
    iget-object v0, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->access$5300(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/m7;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_15
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_30
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final maybeForceBuilderInitialization()V
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->h()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->f()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->i()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->e()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->g()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->j()Lcom/google/protobuf/v9;

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->k()Lcom/google/protobuf/ba;

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->l()Lcom/google/protobuf/v9;

    :cond_0
    return-void
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s0;->n(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/s0;->m(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s0;->n(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/s0;->m(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s0;->n(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

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
    if-nez v0, :cond_9

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    goto/16 :goto_3

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/protobuf/l7;

    iget-object v3, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    invoke-direct {v2, v3}, Lcom/google/protobuf/l7;-><init>(Lcom/google/protobuf/m7;)V

    iput-object v2, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/protobuf/s0;->a:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/s0;->v:Lcom/google/protobuf/m7;

    invoke-interface {v2, v1}, Lcom/google/protobuf/m7;->y(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    iget-object v2, p0, Lcom/google/protobuf/s0;->u:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/protobuf/s0;->a:I

    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/s0;->t:Ljava/util/List;

    goto/16 :goto_2

    :sswitch_2
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/protobuf/s0;->a:I

    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/s0;->m:Ljava/util/List;

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/s0;->k()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protobuf/s0;->a:I

    goto/16 :goto_0

    :sswitch_4
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/s0;->f:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/protobuf/s0;->a:I

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/s0;->e:Ljava/util/List;

    goto/16 :goto_2

    :sswitch_5
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    iget-object v2, p0, Lcom/google/protobuf/s0;->l:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->d()V

    iget-object v2, p0, Lcom/google/protobuf/s0;->k:Ljava/util/List;

    goto :goto_2

    :sswitch_6
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/s0;->j:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protobuf/s0;->a:I

    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/s0;->i:Ljava/util/List;

    goto :goto_2

    :sswitch_7
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/s0;->h:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/protobuf/s0;->a:I

    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/s0;->g:Ljava/util/List;

    goto :goto_2

    :sswitch_8
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/s0;->d:Lcom/google/protobuf/v9;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/s0;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protobuf/s0;->a:I

    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/s0;->c:Ljava/util/List;

    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/s0;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/s0;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/s0;->a:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    if-nez v1, :cond_0

    :sswitch_a
    move v0, v2

    goto/16 :goto_0

    :goto_4
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    throw p1

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
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
