.class public final Lkotlinx/serialization/json/internal/m;
.super Lkotlinx/serialization/json/internal/a;
.source "SourceFile"


# instance fields
.field public final e:Lkotlinx/serialization/json/d;

.field public final f:I

.field public g:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/d;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/a;-><init>(Lkotlinx/serialization/json/b;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/m;->e:Lkotlinx/serialization/json/d;

    invoke-virtual {p2}, Lkotlinx/serialization/json/d;->size()I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/json/internal/m;->f:I

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/serialization/json/internal/m;->g:I

    return-void
.end method


# virtual methods
.method public final Q(Ljava/lang/String;)Lkotlinx/serialization/json/l;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/m;->e:Lkotlinx/serialization/json/d;

    iget-object p0, p0, Lkotlinx/serialization/json/d;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/l;

    return-object p0
.end method

.method public final S(Lkotlinx/serialization/descriptors/g;I)Ljava/lang/String;
    .locals 0

    const-string p0, "desc"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final V()Lkotlinx/serialization/json/l;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/m;->e:Lkotlinx/serialization/json/d;

    return-object p0
.end method

.method public final m(Lkotlinx/serialization/descriptors/g;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lkotlinx/serialization/json/internal/m;->g:I

    iget v0, p0, Lkotlinx/serialization/json/internal/m;->f:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/serialization/json/internal/m;->g:I

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
