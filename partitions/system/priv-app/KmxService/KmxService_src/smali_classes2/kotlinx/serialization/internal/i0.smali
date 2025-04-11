.class public final Lkotlinx/serialization/internal/i0;
.super Lkotlinx/serialization/internal/a1;
.source "SourceFile"


# instance fields
.field public final l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/internal/j0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/internal/a1;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/f0;I)V

    iput-boolean v0, p0, Lkotlinx/serialization/internal/i0;->l:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lkotlinx/serialization/internal/i0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    move-object v1, p1

    check-cast v1, Lkotlinx/serialization/descriptors/g;

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/serialization/internal/a1;->a:Ljava/lang/String;

    invoke-static {v4, v3}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    check-cast p1, Lkotlinx/serialization/internal/i0;

    iget-boolean v3, p1, Lkotlinx/serialization/internal/i0;->l:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lkotlinx/serialization/internal/a1;->j:Lkotlin/f;

    invoke-interface {v3}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlinx/serialization/descriptors/g;

    iget-object p1, p1, Lkotlinx/serialization/internal/a1;->j:Lkotlin/f;

    invoke-interface {p1}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/serialization/descriptors/g;

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/g;->d()I

    move-result p1

    iget v3, p0, Lkotlinx/serialization/internal/a1;->c:I

    if-eq v3, p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_1
    if-ge p1, v3, :cond_8

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/a1;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/a1;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v4

    invoke-interface {v1, p1}, Lkotlinx/serialization/descriptors/g;->i(I)Lkotlinx/serialization/descriptors/g;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/g;->c()Lkotlinx/serialization/descriptors/n;

    move-result-object v5

    invoke-static {v4, v5}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 0

    invoke-super {p0}, Lkotlinx/serialization/internal/a1;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public final isInline()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/internal/i0;->l:Z

    return p0
.end method
