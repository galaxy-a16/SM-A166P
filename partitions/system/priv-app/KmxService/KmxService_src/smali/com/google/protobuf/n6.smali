.class public Lcom/google/protobuf/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h6;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lcom/google/protobuf/n3;

.field public final c:Z

.field public final d:Z

.field public final e:Lcom/google/android/material/datepicker/d;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/n3;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v1, Lcom/google/protobuf/n3;->j:Lcom/google/protobuf/s3;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/s3;->e()Z

    move-result v5

    if-nez v5, :cond_0

    move v11, v3

    goto :goto_0

    :cond_0
    move v11, v4

    :goto_0
    iput-boolean v11, v0, Lcom/google/protobuf/n6;->c:Z

    iget-object v5, v1, Lcom/google/protobuf/n3;->d:Lcom/google/protobuf/p3;

    invoke-virtual {v5}, Lcom/google/protobuf/p3;->h()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-eq v6, v7, :cond_4

    iget-boolean v6, v1, Lcom/google/protobuf/n3;->f:Z

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/google/protobuf/p3;->h()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v5

    if-ne v5, v7, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->n()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    :goto_2
    if-nez v2, :cond_4

    if-nez v11, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v5, :cond_3

    goto :goto_3

    :cond_3
    move v12, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v12, v3

    :goto_4
    iput-boolean v12, v0, Lcom/google/protobuf/n6;->d:Z

    new-instance v2, Lcom/google/android/material/datepicker/d;

    move-object v6, v2

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v6 .. v12}, Lcom/google/android/material/datepicker/d;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ZZ)V

    iput-object v1, v0, Lcom/google/protobuf/n6;->b:Lcom/google/protobuf/n3;

    iget-object v1, v2, Lcom/google/android/material/datepicker/d;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/n6;->a:Ljava/lang/Class;

    iput-object v2, v0, Lcom/google/protobuf/n6;->e:Lcom/google/android/material/datepicker/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/GeneratedMessageV3;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/n6;->e:Lcom/google/android/material/datepicker/d;

    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/google/protobuf/d6;Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "addRepeatedField() called on a singular field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/google/protobuf/n6;->d:Z

    iget-object v1, p0, Lcom/google/protobuf/n6;->e:Lcom/google/android/material/datepicker/d;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/protobuf/n6;->c:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/protobuf/n6;->b:Lcom/google/protobuf/n3;

    if-eqz v0, :cond_1

    iget-object p0, v1, Lcom/google/android/material/datepicker/d;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/z6;

    invoke-interface {p0}, Lcom/google/protobuf/z6;->getNumber()I

    move-result p0

    invoke-virtual {v4}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p1

    if-ne p0, p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/n6;->b(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4}, Lcom/google/protobuf/n3;->f()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_2
    iget-object p0, v1, Lcom/google/android/material/datepicker/d;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public e()Lcom/google/protobuf/m8;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "newBuilderForField() called on a non-Message type."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(Lcom/google/protobuf/d6;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/google/protobuf/n6;->e:Lcom/google/android/material/datepicker/d;

    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Lcom/google/protobuf/d6;I)Lcom/google/protobuf/m8;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Lcom/google/protobuf/d6;ILjava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setRepeatedField() called on a singular field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lcom/google/protobuf/d6;I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getRepeatedField() called on a singular field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j(Lcom/google/protobuf/d6;)Lcom/google/protobuf/m8;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/n6;->b(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lcom/google/protobuf/d6;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(Lcom/google/protobuf/d6;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/n6;->e:Lcom/google/android/material/datepicker/d;

    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getRepeatedField() called on a singular field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o(Lcom/google/protobuf/d6;)V
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/n6;->e:Lcom/google/android/material/datepicker/d;

    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final p(Lcom/google/protobuf/d6;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/google/protobuf/n6;->d:Z

    iget-object v1, p0, Lcom/google/protobuf/n6;->e:Lcom/google/android/material/datepicker/d;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/protobuf/n6;->c:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/protobuf/n6;->b:Lcom/google/protobuf/n3;

    if-eqz v0, :cond_1

    iget-object p0, v1, Lcom/google/android/material/datepicker/d;->h:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/z6;

    invoke-interface {p0}, Lcom/google/protobuf/z6;->getNumber()I

    move-result p0

    invoke-virtual {v4}, Lcom/google/protobuf/n3;->getNumber()I

    move-result p1

    if-ne p0, p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/n6;->m(Lcom/google/protobuf/d6;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4}, Lcom/google/protobuf/n3;->f()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_2
    iget-object p0, v1, Lcom/google/android/material/datepicker/d;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
