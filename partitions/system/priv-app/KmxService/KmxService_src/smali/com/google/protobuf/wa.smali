.class public final Lcom/google/protobuf/wa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/protobuf/wa;


# instance fields
.field public final a:Lcom/google/protobuf/fb;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/wa;

    sget v1, Lcom/google/protobuf/fb;->b:I

    sget-object v1, Lcom/google/protobuf/eb;->a:Lcom/google/protobuf/fb;

    invoke-direct {v0, v1}, Lcom/google/protobuf/wa;-><init>(Lcom/google/protobuf/fb;)V

    sput-object v0, Lcom/google/protobuf/wa;->b:Lcom/google/protobuf/wa;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/fb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/wa;->a:Lcom/google/protobuf/fb;

    return-void
.end method

.method public static c(IILjava/util/List;Landroidx/appcompat/widget/i4;)V
    .locals 6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    and-int/lit8 v1, p1, 0x7

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    aput-object v0, v1, v3

    const-string v0, "0x%08x"

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad tag: "

    invoke-static {p2, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v0, Lcom/google/protobuf/ob;

    invoke-static {v0, p3}, Lcom/google/protobuf/wa;->d(Lcom/google/protobuf/ob;Landroidx/appcompat/widget/i4;)V

    goto :goto_2

    :cond_2
    :try_start_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    sget-object v2, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    new-instance v2, Lcom/google/protobuf/lb;

    invoke-direct {v2}, Lcom/google/protobuf/lb;-><init>()V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/i0;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/protobuf/lb;->e(Lcom/google/protobuf/i0;)V

    invoke-virtual {v1, v3}, Lcom/google/protobuf/i0;->a(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {p3, v2}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/appcompat/widget/i4;->a()V

    iget-object v2, p3, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Lcom/google/protobuf/wa;->d(Lcom/google/protobuf/ob;Landroidx/appcompat/widget/i4;)V

    invoke-virtual {p3}, Landroidx/appcompat/widget/i4;->f()V

    const-string v1, "}"

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    throw v1
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string v1, "\""

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/ByteString;

    sget-object v2, Lcom/google/protobuf/xa;->a:Ljava/util/logging/Logger;

    invoke-static {v0}, Lcom/google/protobuf/c8;->R(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-array v1, v4, [Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    aput-object v0, v1, v3

    const-string v0, "0x%016x"

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/xa;->e(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p3}, Landroidx/appcompat/widget/i4;->a()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static d(Lcom/google/protobuf/ob;Landroidx/appcompat/widget/i4;)V
    .locals 5

    iget-object p0, p0, Lcom/google/protobuf/ob;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/nb;

    iget-object v3, v2, Lcom/google/protobuf/nb;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, p1}, Lcom/google/protobuf/wa;->c(IILjava/util/List;Landroidx/appcompat/widget/i4;)V

    iget-object v3, v2, Lcom/google/protobuf/nb;->b:Ljava/util/List;

    const/4 v4, 0x5

    invoke-static {v1, v4, v3, p1}, Lcom/google/protobuf/wa;->c(IILjava/util/List;Landroidx/appcompat/widget/i4;)V

    iget-object v3, v2, Lcom/google/protobuf/nb;->c:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v1, v4, v3, p1}, Lcom/google/protobuf/wa;->c(IILjava/util/List;Landroidx/appcompat/widget/i4;)V

    iget-object v3, v2, Lcom/google/protobuf/nb;->d:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v1, v4, v3, p1}, Lcom/google/protobuf/wa;->c(IILjava/util/List;Landroidx/appcompat/widget/i4;)V

    iget-object v1, v2, Lcom/google/protobuf/nb;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ob;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    const-string v3, " {"

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/i4;->a()V

    iget-object v3, p1, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, p1}, Lcom/google/protobuf/wa;->d(Lcom/google/protobuf/ob;Landroidx/appcompat/widget/i4;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/i4;->f()V

    const-string v2, "}"

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/i4;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/t8;Landroidx/appcompat/widget/i4;)V
    .locals 6

    invoke-interface {p1}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    const-string v1, "google.protobuf.Any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/h3;->g(I)Lcom/google/protobuf/n3;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/protobuf/h3;->g(I)Lcom/google/protobuf/n3;

    move-result-object v0

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v3, v4, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Lcom/google/protobuf/t8;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lcom/google/protobuf/t8;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcom/google/protobuf/wa;->a:Lcom/google/protobuf/fb;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-eq v5, v1, :cond_3

    array-length v5, v4

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    iget-object v3, v3, Lcom/google/protobuf/fb;->a:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/h3;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/google/protobuf/e4;->d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e4;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/d4;

    iget-object v3, v3, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    invoke-direct {v4, v3}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-interface {v4, v0}, Lcom/google/protobuf/m8;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/m8;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "["

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    const-string v0, "] {"

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/i4;->a()V

    iget-object v0, p2, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, p2}, Lcom/google/protobuf/wa;->a(Lcom/google/protobuf/t8;Landroidx/appcompat/widget/i4;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/i4;->f()V

    const-string v0, "}"

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/i4;->a()V

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "Invalid type url found: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/n3;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/protobuf/n3;->m()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/google/protobuf/va;

    invoke-direct {v5, v2, v4}, Lcom/google/protobuf/va;-><init>(Lcom/google/protobuf/n3;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/va;

    iget-object v4, v3, Lcom/google/protobuf/va;->b:Lcom/google/protobuf/z7;

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    iget-object v4, v3, Lcom/google/protobuf/va;->a:Ljava/lang/Object;

    :goto_5
    invoke-virtual {p0, v2, v4, p2}, Lcom/google/protobuf/wa;->b(Lcom/google/protobuf/n3;Ljava/lang/Object;Landroidx/appcompat/widget/i4;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Lcom/google/protobuf/n3;->q()Z

    move-result v3

    if-eqz v3, :cond_a

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lcom/google/protobuf/wa;->b(Lcom/google/protobuf/n3;Ljava/lang/Object;Landroidx/appcompat/widget/i4;)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0, v2, v1, p2}, Lcom/google/protobuf/wa;->b(Lcom/google/protobuf/n3;Ljava/lang/Object;Landroidx/appcompat/widget/i4;)V

    goto :goto_2

    :cond_b
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getUnknownFields()Lcom/google/protobuf/ob;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/google/protobuf/wa;->d(Lcom/google/protobuf/ob;Landroidx/appcompat/widget/i4;)V

    return-void
.end method

.method public final b(Lcom/google/protobuf/n3;Ljava/lang/Object;Landroidx/appcompat/widget/i4;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "["

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->k()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    iget-object v1, p1, Lcom/google/protobuf/n3;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object v0

    iget-object v2, p1, Lcom/google/protobuf/n3;->e:Lcom/google/protobuf/h3;

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    const-string p2, "This field is not an extension. (%s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    :goto_0
    const-string v0, "]"

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->c()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_4

    const-string v0, " {"

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/appcompat/widget/i4;->a()V

    iget-object v0, p3, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v0, ": "

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    :goto_2
    sget-object v0, Lcom/google/protobuf/ua;->b:[I

    iget-object v2, p1, Lcom/google/protobuf/n3;->g:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-string v2, "\""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    check-cast p2, Lcom/google/protobuf/t8;

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/wa;->a(Lcom/google/protobuf/t8;Landroidx/appcompat/widget/i4;)V

    goto/16 :goto_5

    :pswitch_1
    check-cast p2, Lcom/google/protobuf/m3;

    invoke-virtual {p2}, Lcom/google/protobuf/m3;->c()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p3, v2}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    instance-of p0, p2, Lcom/google/protobuf/ByteString;

    if-eqz p0, :cond_5

    check-cast p2, Lcom/google/protobuf/ByteString;

    sget-object p0, Lcom/google/protobuf/xa;->a:Ljava/util/logging/Logger;

    invoke-static {p2}, Lcom/google/protobuf/c8;->R(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    check-cast p2, [B

    sget-object p0, Lcom/google/protobuf/xa;->a:Ljava/util/logging/Logger;

    new-instance p0, Lcom/google/protobuf/w8;

    const/4 v0, 0x6

    invoke-direct {p0, p2, v0}, Lcom/google/protobuf/w8;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/google/protobuf/c8;->S(Lcom/google/protobuf/w8;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :pswitch_3
    invoke-virtual {p3, v2}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/c8;->R(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/xa;->e(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Lcom/google/protobuf/xa;->a:Ljava/util/logging/Logger;

    if-ltz p0, :cond_6

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_6
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :pswitch_6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :pswitch_7
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p0

    if-ne p0, v1, :cond_7

    invoke-virtual {p3}, Landroidx/appcompat/widget/i4;->f()V

    const-string p0, "}"

    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/i4;->g(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p3}, Landroidx/appcompat/widget/i4;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
