.class public abstract Lcom/google/protobuf/d6;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# instance fields
.field private builderParent:Lcom/google/protobuf/e6;

.field private isClean:Z

.field private meAsParent:Lcom/google/protobuf/c6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/c6;"
        }
    .end annotation
.end field

.field private unknownFieldsOrBuilder:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    .line 2
    sget-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/d6;->builderParent:Lcom/google/protobuf/e6;

    return-void
.end method

.method public static synthetic access$900(Lcom/google/protobuf/d6;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->b()Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/h6;->c(Lcom/google/protobuf/d6;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Ljava/util/TreeMap;
    .locals 6

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v1

    iget-object v1, v1, Lcom/google/protobuf/q6;->a:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/n3;

    iget-object v4, v3, Lcom/google/protobuf/n3;->j:Lcom/google/protobuf/s3;

    if-eqz v4, :cond_1

    iget v3, v4, Lcom/google/protobuf/s3;->f:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v4}, Lcom/google/protobuf/d6;->hasOneof(Lcom/google/protobuf/s3;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/protobuf/d6;->getOneofFieldDescriptor(Lcom/google/protobuf/s3;)Lcom/google/protobuf/n3;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/n3;->q()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/protobuf/d6;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/protobuf/d6;->hasField(Lcom/google/protobuf/n3;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/protobuf/d6;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public clear()Lcom/google/protobuf/d6;
    .locals 1

    sget-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    iput-object v0, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/h6;->o(Lcom/google/protobuf/d6;)V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->a(Lcom/google/protobuf/q6;Lcom/google/protobuf/s3;)Lo2/i;

    move-result-object p1

    iget-object p1, p1, Lo2/i;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clone()Lcom/google/protobuf/d6;
    .locals 1

    invoke-interface {p0}, Lcom/google/protobuf/t8;->getDefaultInstanceForType()Lcom/google/protobuf/n8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/n8;->newBuilderForType()Lcom/google/protobuf/m8;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/d6;

    invoke-interface {p0}, Lcom/google/protobuf/m8;->buildPartial()Lcom/google/protobuf/n8;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;

    return-object v0
.end method

.method dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/d6;->builderParent:Lcom/google/protobuf/e6;

    return-void
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->b()Ljava/util/TreeMap;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/h6;->m(Lcom/google/protobuf/d6;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getFieldBuilder(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/h6;->j(Lcom/google/protobuf/d6;)Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/s3;)Lcom/google/protobuf/n3;
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->a(Lcom/google/protobuf/q6;Lcom/google/protobuf/s3;)Lo2/i;

    move-result-object p1

    iget-object v0, p1, Lo2/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/n3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d6;->hasField(Lcom/google/protobuf/n3;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lo2/i;->c:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/google/protobuf/n3;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo2/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/z6;

    invoke-interface {p0}, Lcom/google/protobuf/z6;->getNumber()I

    move-result p0

    if-lez p0, :cond_1

    iget-object p1, p1, Lo2/i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/h3;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/h3;->g(I)Lcom/google/protobuf/n3;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getParentForChildren()Lcom/google/protobuf/e6;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/d6;->meAsParent:Lcom/google/protobuf/c6;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/c6;

    invoke-direct {v0, p0}, Lcom/google/protobuf/c6;-><init>(Lcom/google/protobuf/d6;)V

    iput-object v0, p0, Lcom/google/protobuf/d6;->meAsParent:Lcom/google/protobuf/c6;

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/d6;->meAsParent:Lcom/google/protobuf/c6;

    return-object p0
.end method

.method public getRepeatedField(Lcom/google/protobuf/n3;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/h6;->i(Lcom/google/protobuf/d6;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatedFieldBuilder(Lcom/google/protobuf/n3;I)Lcom/google/protobuf/m8;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/h6;->g(Lcom/google/protobuf/d6;I)Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/n3;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/h6;->l(Lcom/google/protobuf/d6;)I

    move-result p0

    return p0
.end method

.method public getUnknownFieldSetBuilder()Lcom/google/protobuf/lb;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/protobuf/ob;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ob;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/protobuf/lb;

    invoke-direct {v1}, Lcom/google/protobuf/lb;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    iput-object v1, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    iget-object p0, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/lb;

    return-object p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/ob;
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/protobuf/ob;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/protobuf/ob;

    return-object p0

    :cond_0
    check-cast p0, Lcom/google/protobuf/lb;

    invoke-virtual {p0}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p0

    return-object p0
.end method

.method public hasField(Lcom/google/protobuf/n3;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/h6;->p(Lcom/google/protobuf/d6;)Z

    move-result p0

    return p0
.end method

.method public hasOneof(Lcom/google/protobuf/s3;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->a(Lcom/google/protobuf/q6;Lcom/google/protobuf/s3;)Lo2/i;

    move-result-object p1

    iget-object v0, p1, Lo2/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/n3;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d6;->hasField(Lcom/google/protobuf/n3;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lo2/i;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/z6;

    invoke-interface {p0}, Lcom/google/protobuf/z6;->getNumber()I

    move-result p0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public abstract internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
.end method

.method public internalGetMapField(I)Lcom/google/protobuf/h8;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No map fields found in "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internalGetMutableMapField(I)Lcom/google/protobuf/h8;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No map fields found in "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isClean()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/d6;->isClean:Z

    return p0
.end method

.method public markClean()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/d6;->isClean:Z

    return-void
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 2

    sget-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ob;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ob;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getUnknownFieldSetBuilder()Lcom/google/protobuf/lb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/lb;->f(Lcom/google/protobuf/ob;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownLengthDelimitedField(ILcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getUnknownFieldSetBuilder()Lcom/google/protobuf/lb;

    move-result-object p0

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/lb;->b(I)Lcom/google/protobuf/mb;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/mb;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final mergeUnknownVarintField(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getUnknownFieldSetBuilder()Lcom/google/protobuf/lb;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/lb;->g(II)V

    return-void
.end method

.method public newBuilderForField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/h6;->e()Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0
.end method

.method public onBuilt()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/d6;->builderParent:Lcom/google/protobuf/e6;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->markClean()V

    :cond_0
    return-void
.end method

.method public final onChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/d6;->isClean:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/d6;->builderParent:Lcom/google/protobuf/e6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/b;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/d6;->isClean:Z

    :cond_0
    return-void
.end method

.method public parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getUnknownFieldSetBuilder()Lcom/google/protobuf/lb;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/lb;->d(ILcom/google/protobuf/i0;)Z

    move-result p0

    return p0
.end method

.method public setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/h6;->f(Lcom/google/protobuf/d6;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->internalGetFieldAccessorTable()Lcom/google/protobuf/q6;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/q6;->b(Lcom/google/protobuf/q6;Lcom/google/protobuf/n3;)Lcom/google/protobuf/h6;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3}, Lcom/google/protobuf/h6;->h(Lcom/google/protobuf/d6;ILjava/lang/Object;)V

    return-object p0
.end method

.method public setUnknownFieldSetBuilder(Lcom/google/protobuf/lb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public setUnknownFieldsProto3(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ob;",
            ")",
            "Lcom/google/protobuf/d6;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/d6;->unknownFieldsOrBuilder:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method
