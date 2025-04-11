.class public final Lcom/google/protobuf/bc;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/cc;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Lcom/google/protobuf/ba;

.field public d:Lcom/google/protobuf/ba;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/bc;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/bc;->a:I

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
    invoke-virtual {p0}, Lcom/google/protobuf/bc;->c()Lcom/google/protobuf/Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/bc;->c()Lcom/google/protobuf/Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/google/protobuf/bc;->c()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/bc;->c()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/protobuf/Value;
    .locals 3

    new-instance v0, Lcom/google/protobuf/Value;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Value;-><init>(Lcom/google/protobuf/d6;Lcom/google/protobuf/zb;)V

    iget v1, p0, Lcom/google/protobuf/bc;->a:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$302(Lcom/google/protobuf/Value;I)I

    iget-object v1, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$402(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/bc;->a:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/bc;->c:Lcom/google/protobuf/ba;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$402(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, p0, Lcom/google/protobuf/bc;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/bc;->d:Lcom/google/protobuf/ba;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Value;->access$402(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/bc;

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/ba;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/bc;->d:Lcom/google/protobuf/ba;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/bc;->a:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/ListValue;->getDefaultInstance()Lcom/google/protobuf/ListValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/ba;

    iget-object v2, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/ListValue;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/bc;->d:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/google/protobuf/bc;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    iget-object p0, p0, Lcom/google/protobuf/bc;->d:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public final e()Lcom/google/protobuf/ba;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/bc;->c:Lcom/google/protobuf/ba;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/bc;->a:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/ba;

    iget-object v2, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/Struct;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/bc;->c:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/google/protobuf/bc;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    iget-object p0, p0, Lcom/google/protobuf/bc;->c:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public final f(Lcom/google/protobuf/Value;)V
    .locals 4

    invoke-static {}, Lcom/google/protobuf/Value;->getDefaultInstance()Lcom/google/protobuf/Value;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/protobuf/ac;->a:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getKindCase()Lcom/google/protobuf/Value$KindCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getListValue()Lcom/google/protobuf/ListValue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/bc;->d:Lcom/google/protobuf/ba;

    const/4 v2, 0x6

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/protobuf/bc;->a:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/ListValue;->getDefaultInstance()Lcom/google/protobuf/ListValue;

    move-result-object v3

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/ListValue;

    invoke-static {v1}, Lcom/google/protobuf/ListValue;->newBuilder(Lcom/google/protobuf/ListValue;)Lcom/google/protobuf/r7;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/r7;->d(Lcom/google/protobuf/ListValue;)V

    invoke-virtual {v1}, Lcom/google/protobuf/r7;->c()Lcom/google/protobuf/ListValue;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/google/protobuf/bc;->a:I

    if-ne v3, v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Lcom/google/protobuf/ba;->h(Lcom/google/protobuf/c;)V

    :goto_0
    iput v2, p0, Lcom/google/protobuf/bc;->a:I

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getStructValue()Lcom/google/protobuf/Struct;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/bc;->c:Lcom/google/protobuf/ba;

    const/4 v2, 0x5

    if-nez v1, :cond_5

    iget v1, p0, Lcom/google/protobuf/bc;->a:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v3

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v1}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/pa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/pa;->e(Lcom/google/protobuf/Struct;)V

    invoke-virtual {v1}, Lcom/google/protobuf/pa;->c()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/google/protobuf/bc;->a:I

    if-ne v3, v2, :cond_6

    invoke-virtual {v1, v0}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v0}, Lcom/google/protobuf/ba;->h(Lcom/google/protobuf/c;)V

    :goto_1
    iput v2, p0, Lcom/google/protobuf/bc;->a:I

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getBoolValue()Z

    move-result v0

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/protobuf/bc;->a:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/protobuf/bc;->a:I

    invoke-static {p1}, Lcom/google/protobuf/Value;->access$400(Lcom/google/protobuf/Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getNumberValue()D

    move-result-wide v0

    const/4 v2, 0x2

    iput v2, p0, Lcom/google/protobuf/bc;->a:I

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getNullValueValue()I

    move-result v0

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/protobuf/bc;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/Value;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_8

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    const/16 v3, 0x8

    if-eq v1, v3, :cond_6

    const/16 v3, 0x11

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x20

    if-eq v1, v3, :cond_3

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_2

    const/16 v3, 0x32

    if-eq v1, v3, :cond_1

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/d6;->parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/bc;->d()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    const/4 v1, 0x6

    iput v1, p0, Lcom/google/protobuf/bc;->a:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/bc;->e()Lcom/google/protobuf/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/i0;->x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V

    const/4 v1, 0x5

    iput v1, p0, Lcom/google/protobuf/bc;->a:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/protobuf/bc;->a:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->F()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/protobuf/bc;->a:I

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->o()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/protobuf/bc;->a:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->p()I

    move-result v1

    iput v2, p0, Lcom/google/protobuf/bc;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/protobuf/bc;->b:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_2
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    throw p1

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/Value;->getDefaultInstance()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/protobuf/Value;->getDefaultInstance()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    sget-object p0, Lcom/google/protobuf/sa;->d:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public final internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    sget-object p0, Lcom/google/protobuf/sa;->e:Lcom/google/protobuf/q6;

    const-class v0, Lcom/google/protobuf/Value;

    const-class v1, Lcom/google/protobuf/bc;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/bc;->g(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/Value;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Value;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/bc;->f(Lcom/google/protobuf/Value;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/bc;->g(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/protobuf/Value;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Value;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/bc;->f(Lcom/google/protobuf/Value;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/bc;->g(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
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
