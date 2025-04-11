.class public final Lcom/google/protobuf/q6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/h3;

.field public final b:[Lcom/google/protobuf/h6;

.field public c:[Ljava/lang/String;

.field public final d:[Lo2/i;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/q6;->a:Lcom/google/protobuf/h3;

    iput-object p2, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/h6;

    iput-object p2, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    iget-object p1, p1, Lcom/google/protobuf/h3;->i:[Lcom/google/protobuf/s3;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lo2/i;

    iput-object p1, p0, Lcom/google/protobuf/q6;->d:[Lo2/i;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/protobuf/q6;->e:Z

    return-void
.end method

.method public static a(Lcom/google/protobuf/q6;Lcom/google/protobuf/s3;)Lo2/i;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/protobuf/s3;->e:Lcom/google/protobuf/h3;

    iget-object v1, p0, Lcom/google/protobuf/q6;->a:Lcom/google/protobuf/h3;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/q6;->d:[Lo2/i;

    iget p1, p1, Lcom/google/protobuf/s3;->a:I

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OneofDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    iget-object v1, p0, Lcom/google/protobuf/q6;->a:Lcom/google/protobuf/h3;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    iget p1, p1, Lcom/google/protobuf/n3;->a:I

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This type does not have extensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 12

    iget-boolean v0, p0, Lcom/google/protobuf/q6;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/protobuf/q6;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_a

    iget-object v4, p0, Lcom/google/protobuf/q6;->a:Lcom/google/protobuf/h3;

    invoke-virtual {v4}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/google/protobuf/n3;

    iget-object v4, v6, Lcom/google/protobuf/n3;->j:Lcom/google/protobuf/s3;

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    iget v4, v4, Lcom/google/protobuf/s3;->a:I

    add-int/2addr v4, v0

    aget-object v3, v3, v4

    :cond_2
    move-object v10, v3

    invoke-virtual {v6}, Lcom/google/protobuf/n3;->q()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v6}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_4

    invoke-virtual {v6}, Lcom/google/protobuf/n3;->m()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    new-instance v4, Lcom/google/protobuf/k6;

    iget-object v5, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    const/4 v10, 0x1

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/k6;-><init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;I)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    new-instance v4, Lcom/google/protobuf/l6;

    iget-object v5, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/l6;-><init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v6}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    new-instance v4, Lcom/google/protobuf/i6;

    iget-object v5, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/i6;-><init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    new-instance v4, Lcom/google/protobuf/k6;

    iget-object v5, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    const/4 v10, 0x0

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/k6;-><init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;I)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    new-instance v4, Lcom/google/protobuf/o6;

    iget-object v5, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/o6;-><init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    new-instance v4, Lcom/google/protobuf/m6;

    iget-object v5, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/m6;-><init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    new-instance v4, Lcom/google/protobuf/p6;

    iget-object v5, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/p6;-><init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/q6;->b:[Lcom/google/protobuf/h6;

    new-instance v4, Lcom/google/protobuf/n6;

    iget-object v5, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/n6;-><init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/protobuf/q6;->d:[Lo2/i;

    array-length v2, v2

    :goto_2
    if-ge v1, v2, :cond_b

    iget-object v10, p0, Lcom/google/protobuf/q6;->d:[Lo2/i;

    new-instance v11, Lo2/i;

    iget-object v5, p0, Lcom/google/protobuf/q6;->a:Lcom/google/protobuf/h3;

    iget-object v4, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    add-int v6, v1, v0

    aget-object v7, v4, v6

    move-object v4, v11

    move v6, v1

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lo2/i;-><init>(Lcom/google/protobuf/h3;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/protobuf/q6;->e:Z

    iput-object v3, p0, Lcom/google/protobuf/q6;->c:[Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
