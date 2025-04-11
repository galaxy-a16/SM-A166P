.class public final Lkotlinx/serialization/internal/l0;
.super Lkotlinx/serialization/internal/d1;
.source "SourceFile"


# static fields
.field public static final c:Lkotlinx/serialization/internal/l0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/l0;

    invoke-direct {v0}, Lkotlinx/serialization/internal/l0;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/l0;->c:Lkotlinx/serialization/internal/l0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/m0;->a:Lkotlinx/serialization/internal/m0;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/d1;-><init>(Lkotlinx/serialization/c;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [I

    const-string p0, "<this>"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public final f(Lzb/a;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lkotlinx/serialization/internal/k0;

    const-string p4, "builder"

    invoke-static {p3, p4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/d1;->b:Lkotlinx/serialization/internal/c1;

    invoke-interface {p1, p0, p2}, Lzb/a;->u(Lkotlinx/serialization/internal/c1;I)I

    move-result p0

    invoke-static {p3}, Lkotlinx/serialization/internal/b1;->c(Lkotlinx/serialization/internal/b1;)V

    iget-object p1, p3, Lkotlinx/serialization/internal/k0;->a:[I

    iget p2, p3, Lkotlinx/serialization/internal/k0;->b:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p3, Lkotlinx/serialization/internal/k0;->b:I

    aput p0, p1, p2

    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [I

    const-string p0, "<this>"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlinx/serialization/internal/k0;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/k0;-><init>([I)V

    return-object p0
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public final k(Lzb/b;Ljava/lang/Object;I)V
    .locals 5

    check-cast p2, [I

    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget v1, p2, v0

    move-object v2, p1

    check-cast v2, Lp1/f;

    const-string v3, "descriptor"

    iget-object v4, p0, Lkotlinx/serialization/internal/d1;->b:Lkotlinx/serialization/internal/c1;

    invoke-static {v4, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v0}, Lp1/f;->w(Lkotlinx/serialization/descriptors/g;I)V

    invoke-virtual {v2, v1}, Lp1/f;->k(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
