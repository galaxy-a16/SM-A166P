.class public final Lcom/google/protobuf/z5;
.super Lcom/google/protobuf/n4;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/v5;

.field public final b:Ljava/lang/Class;

.field public final c:Lcom/google/protobuf/n8;

.field public final d:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/v5;Ljava/lang/Class;Lcom/google/protobuf/n8;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/n4;-><init>()V

    const-class v0, Lcom/google/protobuf/n8;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Bad messageDefaultInstance for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/protobuf/z5;->a:Lcom/google/protobuf/v5;

    iput-object p2, p0, Lcom/google/protobuf/z5;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/protobuf/z5;->c:Lcom/google/protobuf/n8;

    const-class p1, Lcom/google/protobuf/r9;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    const/4 p3, 0x0

    const-class v0, Lcom/google/protobuf/m3;

    aput-object v0, p1, p3

    const-string v0, "valueOf"

    invoke-static {p2, v0, p1}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/z5;->d:Ljava/lang/reflect/Method;

    const-string p0, "getValueDescriptor"

    new-array p1, p3, [Ljava/lang/Class;

    invoke-static {p2, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/z5;->d:Ljava/lang/reflect/Method;

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/z5;->b()Lcom/google/protobuf/n3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/z5;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/z5;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/google/protobuf/n3;
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/z5;->a:Lcom/google/protobuf/v5;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/v5;->a:Lcom/google/protobuf/n3;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/v5;->a:Lcom/google/protobuf/n3;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/v5;->a()Lcom/google/protobuf/n3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v5;->a:Lcom/google/protobuf/n3;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/v5;->a:Lcom/google/protobuf/n3;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getDescriptor() called before internalInit()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/z5;->b()Lcom/google/protobuf/n3;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/s5;->a:[I

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object p1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast p1, Lcom/google/protobuf/m3;

    aput-object p1, v0, v1

    iget-object p0, p0, Lcom/google/protobuf/z5;->d:Ljava/lang/reflect/Method;

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/z5;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/z5;->c:Lcom/google/protobuf/n8;

    invoke-interface {p0}, Lcom/google/protobuf/n8;->newBuilderForType()Lcom/google/protobuf/m8;

    move-result-object p0

    check-cast p1, Lcom/google/protobuf/n8;

    invoke-interface {p0, p1}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/m8;->build()Lcom/google/protobuf/n8;

    move-result-object p0

    return-object p0
.end method
