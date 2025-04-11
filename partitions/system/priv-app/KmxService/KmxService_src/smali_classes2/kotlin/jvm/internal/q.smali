.class public final Lkotlin/jvm/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/v;


# instance fields
.field public final a:Lkotlin/reflect/d;

.field public final b:Ljava/util/List;

.field public final c:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/j;Ljava/util/List;)V
    .locals 1

    const-string v0, "arguments"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/q;->a:Lkotlin/reflect/d;

    iput-object p2, p0, Lkotlin/jvm/internal/q;->b:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lkotlin/jvm/internal/q;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/jvm/internal/q;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/jvm/internal/q;

    iget-object v0, p1, Lkotlin/jvm/internal/q;->a:Lkotlin/reflect/d;

    iget-object v1, p0, Lkotlin/jvm/internal/q;->a:Lkotlin/reflect/d;

    invoke-static {v1, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkotlin/jvm/internal/q;->b:Ljava/util/List;

    iget-object v1, p0, Lkotlin/jvm/internal/q;->b:Ljava/util/List;

    invoke-static {v1, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lkotlin/jvm/internal/q;->c:I

    iget p1, p1, Lkotlin/jvm/internal/q;->c:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lkotlin/jvm/internal/q;->a:Lkotlin/reflect/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/jvm/internal/q;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lkotlin/jvm/internal/q;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlin/jvm/internal/q;->a:Lkotlin/reflect/d;

    instance-of v2, v1, Lkotlin/reflect/c;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/c;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lv9/a;->s(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v3

    :cond_1
    iget v2, p0, Lkotlin/jvm/internal/q;->c:I

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_3

    const-string v1, "kotlin.Nothing"

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_c

    const-class v1, [Z

    invoke-static {v3, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "kotlin.BooleanArray"

    goto :goto_1

    :cond_4
    const-class v1, [C

    invoke-static {v3, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "kotlin.CharArray"

    goto :goto_1

    :cond_5
    const-class v1, [B

    invoke-static {v3, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "kotlin.ByteArray"

    goto :goto_1

    :cond_6
    const-class v1, [S

    invoke-static {v3, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "kotlin.ShortArray"

    goto :goto_1

    :cond_7
    const-class v1, [I

    invoke-static {v3, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "kotlin.IntArray"

    goto :goto_1

    :cond_8
    const-class v1, [F

    invoke-static {v3, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "kotlin.FloatArray"

    goto :goto_1

    :cond_9
    const-class v1, [J

    invoke-static {v3, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "kotlin.LongArray"

    goto :goto_1

    :cond_a
    const-class v1, [D

    invoke-static {v3, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "kotlin.DoubleArray"

    goto :goto_1

    :cond_b
    const-string v1, "kotlin.Array"

    goto :goto_1

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lkotlin/jvm/internal/q;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_d

    move-object p0, v4

    goto :goto_2

    :cond_d
    iget-object v5, p0, Lkotlin/jvm/internal/q;->b:Ljava/util/List;

    const-string v6, ", "

    const-string v7, "<"

    const-string v8, ">"

    new-instance v9, Lkotlin/jvm/internal/TypeReference$asString$args$1;

    invoke-direct {v9, p0}, Lkotlin/jvm/internal/TypeReference$asString$args$1;-><init>(Lkotlin/jvm/internal/q;)V

    const/16 v10, 0x18

    invoke-static/range {v5 .. v10}, Lkotlin/collections/r;->V0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvb/b;I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_f

    const-string v4, "?"

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Kotlin reflection is not available)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
