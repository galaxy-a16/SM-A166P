.class public final Lkotlinx/serialization/internal/w;
.super Lkotlinx/serialization/internal/d1;
.source "SourceFile"


# static fields
.field public static final c:Lkotlinx/serialization/internal/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/w;

    invoke-direct {v0}, Lkotlinx/serialization/internal/w;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/w;->c:Lkotlinx/serialization/internal/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/x;->a:Lkotlinx/serialization/internal/x;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/d1;-><init>(Lkotlinx/serialization/c;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [D

    const-string p0, "<this>"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public final f(Lzb/a;ILjava/lang/Object;Z)V
    .locals 1

    check-cast p3, Lkotlinx/serialization/internal/v;

    const-string p4, "builder"

    invoke-static {p3, p4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/d1;->b:Lkotlinx/serialization/internal/c1;

    invoke-interface {p1, p0, p2}, Lzb/a;->y(Lkotlinx/serialization/internal/c1;I)D

    move-result-wide p0

    invoke-static {p3}, Lkotlinx/serialization/internal/b1;->c(Lkotlinx/serialization/internal/b1;)V

    iget-object p2, p3, Lkotlinx/serialization/internal/v;->a:[D

    iget p4, p3, Lkotlinx/serialization/internal/v;->b:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p3, Lkotlinx/serialization/internal/v;->b:I

    aput-wide p0, p2, p4

    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [D

    const-string p0, "<this>"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlinx/serialization/internal/v;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/v;-><init>([D)V

    return-object p0
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [D

    return-object p0
.end method

.method public final k(Lzb/b;Ljava/lang/Object;I)V
    .locals 6

    check-cast p2, [D

    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-wide v1, p2, v0

    move-object v3, p1

    check-cast v3, Lp1/f;

    const-string v4, "descriptor"

    iget-object v5, p0, Lkotlinx/serialization/internal/d1;->b:Lkotlinx/serialization/internal/c1;

    invoke-static {v5, v4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v0}, Lp1/f;->w(Lkotlinx/serialization/descriptors/g;I)V

    invoke-virtual {v3, v1, v2}, Lp1/f;->e(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
