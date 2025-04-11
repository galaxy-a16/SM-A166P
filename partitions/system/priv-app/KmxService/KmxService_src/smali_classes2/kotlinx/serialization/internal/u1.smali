.class public final Lkotlinx/serialization/internal/u1;
.super Lkotlinx/serialization/internal/d1;
.source "SourceFile"


# static fields
.field public static final c:Lkotlinx/serialization/internal/u1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/u1;

    invoke-direct {v0}, Lkotlinx/serialization/internal/u1;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/u1;->c:Lkotlinx/serialization/internal/u1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lkotlin/m;->b:I

    sget-object v0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/internal/v1;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/d1;-><init>(Lkotlinx/serialization/c;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/n;

    iget-object p0, p1, Lkotlin/n;->a:[I

    const-string p1, "$this$collectionSize"

    invoke-static {p0, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    return p0
.end method

.method public final f(Lzb/a;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lkotlinx/serialization/internal/t1;

    const-string p4, "builder"

    invoke-static {p3, p4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/d1;->b:Lkotlinx/serialization/internal/c1;

    invoke-interface {p1, p0, p2}, Lzb/a;->t(Lkotlinx/serialization/internal/c1;I)Lzb/c;

    move-result-object p0

    invoke-interface {p0}, Lzb/c;->w()I

    move-result p0

    invoke-static {p3}, Lkotlinx/serialization/internal/b1;->c(Lkotlinx/serialization/internal/b1;)V

    iget-object p1, p3, Lkotlinx/serialization/internal/t1;->a:[I

    iget p2, p3, Lkotlinx/serialization/internal/t1;->b:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p3, Lkotlinx/serialization/internal/t1;->b:I

    aput p0, p1, p2

    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/n;

    iget-object p0, p1, Lkotlin/n;->a:[I

    const-string p1, "$this$toBuilder"

    invoke-static {p0, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlinx/serialization/internal/t1;

    invoke-direct {p1, p0}, Lkotlinx/serialization/internal/t1;-><init>([I)V

    return-object p1
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [I

    new-instance v0, Lkotlin/n;

    invoke-direct {v0, p0}, Lkotlin/n;-><init>([I)V

    return-object v0
.end method

.method public final k(Lzb/b;Ljava/lang/Object;I)V
    .locals 3

    check-cast p2, Lkotlin/n;

    iget-object p2, p2, Lkotlin/n;->a:[I

    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lkotlinx/serialization/internal/d1;->b:Lkotlinx/serialization/internal/c1;

    move-object v2, p1

    check-cast v2, Lp1/f;

    invoke-virtual {v2, v1, v0}, Lp1/f;->x(Lkotlinx/serialization/internal/c1;I)Lzb/d;

    move-result-object v1

    aget v2, p2, v0

    invoke-interface {v1, v2}, Lzb/d;->k(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
