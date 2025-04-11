.class public final Lcom/google/protobuf/va;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/google/protobuf/z7;

.field public final c:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/n3;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p2, Lcom/google/protobuf/z7;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/protobuf/z7;

    iput-object p2, p0, Lcom/google/protobuf/va;->b:Lcom/google/protobuf/z7;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/google/protobuf/va;->a:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/n3;

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/va;->c:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/va;->b:Lcom/google/protobuf/z7;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/google/protobuf/va;

    invoke-virtual {p0}, Lcom/google/protobuf/va;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/va;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/google/protobuf/ua;->a:[I

    iget-object v2, p0, Lcom/google/protobuf/va;->c:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    :goto_0
    move v1, v4

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/va;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/va;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p0, :cond_2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :cond_3
    if-eqz p0, :cond_4

    if-nez p1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/va;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/va;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/va;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/va;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/va;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/va;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v1

    goto :goto_2

    :cond_8
    :goto_1
    sget-object p0, Lcom/google/protobuf/xa;->a:Ljava/util/logging/Logger;

    const-string p1, "Invalid key for map field."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_2
    return v1
.end method
