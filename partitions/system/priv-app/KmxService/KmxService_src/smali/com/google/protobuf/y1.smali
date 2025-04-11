.class public final Lcom/google/protobuf/y1;
.super Lcom/google/protobuf/f6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a2;


# instance fields
.field public A:Lcom/google/protobuf/v9;

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Ljava/lang/Object;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public p:Z

.field public q:Ljava/lang/Object;

.field public t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public y:Ljava/lang/Object;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/f6;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/y1;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/y1;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/protobuf/y1;->h:I

    iput-object v0, p0, Lcom/google/protobuf/y1;->i:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/protobuf/y1;->p:Z

    iput-object v0, p0, Lcom/google/protobuf/y1;->q:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/y1;->t:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/y1;->u:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/y1;->v:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/y1;->w:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/y1;->x:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/y1;->y:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/f6;-><init>(Lcom/google/protobuf/e6;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/y1;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/y1;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/y1;->h:I

    iput-object p1, p0, Lcom/google/protobuf/y1;->i:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/protobuf/y1;->p:Z

    iput-object p1, p0, Lcom/google/protobuf/y1;->q:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/y1;->t:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/y1;->u:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/y1;->v:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/y1;->w:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/y1;->x:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/y1;->y:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f6;->c(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/f6;

    return-object p0
.end method

.method public final build()Lcom/google/protobuf/n8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y1;->i()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/y1;->i()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/y1;->i()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/y1;->i()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/y1;

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/f3;->A:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final i()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 5

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/f6;Lcom/google/protobuf/q0;)V

    iget-object v1, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    if-eqz v1, :cond_16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/y1;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/y1;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v2, v2, 0x2

    :cond_3
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/google/protobuf/y1;->e:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit8 v2, v2, 0x4

    :cond_4
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/google/protobuf/y1;->f:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit8 v2, v2, 0x8

    :cond_5
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/google/protobuf/y1;->g:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit8 v2, v2, 0x10

    :cond_6
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/google/protobuf/y1;->h:I

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14802(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I

    or-int/lit8 v2, v2, 0x20

    :cond_7
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/protobuf/y1;->i:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v2, v2, 0x40

    :cond_8
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/google/protobuf/y1;->j:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x80

    :cond_9
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/google/protobuf/y1;->k:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x100

    :cond_a
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/google/protobuf/y1;->l:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x200

    :cond_b
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/google/protobuf/y1;->m:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x400

    :cond_c
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/google/protobuf/y1;->n:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x800

    :cond_d
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/google/protobuf/y1;->p:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_e
    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/protobuf/y1;->q:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit16 v2, v2, 0x2000

    :cond_f
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/protobuf/y1;->t:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit16 v2, v2, 0x4000

    :cond_10
    const v3, 0x8000

    and-int v4, v1, v3

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/google/protobuf/y1;->u:Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/2addr v2, v3

    :cond_11
    const/high16 v3, 0x10000

    and-int v4, v1, v3

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/google/protobuf/y1;->v:Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/2addr v2, v3

    :cond_12
    const/high16 v3, 0x20000

    and-int v4, v1, v3

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/google/protobuf/y1;->w:Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/2addr v2, v3

    :cond_13
    const/high16 v3, 0x40000

    and-int v4, v1, v3

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/google/protobuf/y1;->x:Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/2addr v2, v3

    :cond_14
    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/protobuf/y1;->y:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/2addr v2, v3

    :cond_15
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16376(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I

    :cond_16
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/f3;->B:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const-class v1, Lcom/google/protobuf/y1;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->m()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object v2

    :goto_2
    check-cast v2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/f6;->e()Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final j(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V
    .locals 6

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14300(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14400(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/y1;->e:Z

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/y1;->f:Z

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/y1;->g:Z

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/y1;->h:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14900(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->i:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/y1;->j:Z

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/y1;->k:Z

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/y1;->l:Z

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpGenericServices()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpGenericServices()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/y1;->m:Z

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/y1;->n:Z

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/y1;->p:Z

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->q:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15700(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->t:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasSwiftPrefix()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->u:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    const v2, 0x8000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpClassPrefix()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15900(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->v:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpNamespace()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16000(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->w:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpMetadataNamespace()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->x:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasRubyPackage()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->y:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    const/high16 v2, 0x100000

    const v3, -0x100001

    if-nez v0, :cond_17

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    and-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    goto :goto_0

    :cond_15
    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    and-int/2addr v0, v2

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/y1;->b:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/y1;->b:I

    :cond_16
    iget-object v0, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :cond_17
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    iput-object v4, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    iget v5, p0, Lcom/google/protobuf/y1;->b:I

    and-int/2addr v3, v5

    iput v3, p0, Lcom/google/protobuf/y1;->b:I

    sget-boolean v5, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    if-nez v5, :cond_19

    new-instance v5, Lcom/google/protobuf/v9;

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    goto :goto_1

    :cond_18
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v5, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    iput-object v4, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    :cond_19
    iget-object v4, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    :cond_1a
    iput-object v4, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    goto :goto_2

    :cond_1b
    iget-object v0, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_1c
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f6;->f(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protobuf/f6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    goto/16 :goto_2

    :sswitch_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/o9;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    iget-object v2, p0, Lcom/google/protobuf/y1;->A:Lcom/google/protobuf/v9;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/protobuf/y1;->b:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/y1;->b:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/y1;->b:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/y1;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->y:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->x:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/y1;->m:Z

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->w:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->v:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->u:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->t:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->q:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/y1;->p:Z

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/y1;->g:Z

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/y1;->n:Z

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/y1;->f:Z

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/y1;->l:Z

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/y1;->k:Z

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/y1;->j:Z

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->i:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/y1;->e:Z

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->p()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->forNumber(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/d6;->mergeUnknownVarintField(II)V

    goto/16 :goto_0

    :cond_3
    iput v1, p0, Lcom/google/protobuf/y1;->h:I

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->d:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/y1;->b:I

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->n()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y1;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/y1;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/y1;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    if-nez v1, :cond_0

    :sswitch_15
    move v0, v2

    goto/16 :goto_0

    :goto_3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_14
        0x42 -> :sswitch_13
        0x48 -> :sswitch_12
        0x50 -> :sswitch_11
        0x5a -> :sswitch_10
        0x80 -> :sswitch_f
        0x88 -> :sswitch_e
        0x90 -> :sswitch_d
        0xa0 -> :sswitch_c
        0xb8 -> :sswitch_b
        0xd8 -> :sswitch_a
        0xf8 -> :sswitch_9
        0x122 -> :sswitch_8
        0x12a -> :sswitch_7
        0x13a -> :sswitch_6
        0x142 -> :sswitch_5
        0x14a -> :sswitch_4
        0x150 -> :sswitch_3
        0x162 -> :sswitch_2
        0x16a -> :sswitch_1
        0x1f3a -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y1;->j(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y1;->j(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public final setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f6;->g(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/f6;

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method
