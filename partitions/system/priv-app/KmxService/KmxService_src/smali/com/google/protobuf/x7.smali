.class public final Lcom/google/protobuf/x7;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/y7;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    iput-object p2, p0, Lcom/google/protobuf/x7;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/protobuf/x7;->d:Z

    iput-boolean p5, p0, Lcom/google/protobuf/x7;->e:Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no repeated field in a map entry message."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lcom/google/protobuf/z7;
    .locals 3

    new-instance v0, Lcom/google/protobuf/z7;

    iget-object v1, p0, Lcom/google/protobuf/x7;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/z7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/protobuf/z7;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x7;->b()Lcom/google/protobuf/z7;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x7;->b()Lcom/google/protobuf/z7;

    move-result-object p0

    return-object p0
.end method

.method public final buildPartial()Lcom/google/protobuf/n8;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/z7;

    iget-object v1, p0, Lcom/google/protobuf/x7;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/z7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final buildPartial()Lcom/google/protobuf/r8;
    .locals 3

    .line 3
    new-instance v0, Lcom/google/protobuf/z7;

    iget-object v1, p0, Lcom/google/protobuf/x7;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/z7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(Lcom/google/protobuf/n3;)V
    .locals 3

    iget-object v0, p1, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    iget-object p0, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    iget-object v1, p0, Lcom/google/protobuf/y7;->e:Lcom/google/protobuf/h3;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong FieldDescriptor \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/protobuf/n3;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/protobuf/y7;->e:Lcom/google/protobuf/h3;

    iget-object p0, p0, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/google/protobuf/x7;

    iget-object v1, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    iget-object v2, p0, Lcom/google/protobuf/x7;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/google/protobuf/x7;->d:Z

    iget-boolean v5, p0, Lcom/google/protobuf/x7;->e:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/x7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-object v6
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    iget-object v1, v1, Lcom/google/protobuf/y7;->e:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/n3;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/x7;->hasField(Lcom/google/protobuf/n3;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/x7;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 3

    new-instance v0, Lcom/google/protobuf/z7;

    iget-object p0, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    iget-object v1, p0, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/z7;-><init>(Lcom/google/protobuf/y7;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    iget-object p0, p0, Lcom/google/protobuf/y7;->e:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x7;->c(Lcom/google/protobuf/n3;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/x7;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    :goto_0
    iget-object v0, p1, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->g()Lcom/google/protobuf/l3;

    move-result-object p1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/l3;->f(I)Lcom/google/protobuf/m3;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/ob;
    .locals 0

    sget-object p0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public final hasField(Lcom/google/protobuf/n3;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x7;->c(Lcom/google/protobuf/n3;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p0, p0, Lcom/google/protobuf/x7;->d:Z

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/google/protobuf/x7;->e:Z

    :goto_0
    return p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    iget-object p0, p0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne p0, v1, :cond_0

    check-cast v0, Lcom/google/protobuf/r8;

    invoke-interface {v0}, Lcom/google/protobuf/s8;->isInitialized()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final newBuilderForField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x7;->c(Lcom/google/protobuf/n3;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/n8;

    invoke-interface {p0}, Lcom/google/protobuf/n8;->newBuilderForType()Lcom/google/protobuf/m8;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/protobuf/n3;->c:Ljava/lang/String;

    const-string v1, "\" is not a message value field."

    invoke-static {v0, p1, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x7;->c(Lcom/google/protobuf/n3;)V

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Lcom/google/protobuf/x7;->b:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/protobuf/x7;->d:Z

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/google/protobuf/m3;

    invoke-virtual {p2}, Lcom/google/protobuf/m3;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/protobuf/x7;->a:Lcom/google/protobuf/y7;

    iget-object v0, p1, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/n8;

    invoke-interface {p1}, Lcom/google/protobuf/n8;->toBuilder()Lcom/google/protobuf/m8;

    move-result-object p1

    check-cast p2, Lcom/google/protobuf/n8;

    invoke-interface {p1, p2}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/m8;->build()Lcom/google/protobuf/n8;

    move-result-object p2

    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/google/protobuf/x7;->c:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/protobuf/x7;->e:Z

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/google/protobuf/n3;->c:Ljava/lang/String;

    const-string v0, " is null"

    invoke-static {p2, p1, v0}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    return-object p0
.end method
