.class public final Lkotlinx/serialization/internal/t0;
.super Lkotlinx/serialization/internal/n0;
.source "SourceFile"


# instance fields
.field public final c:Lkotlinx/serialization/descriptors/h;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/n0;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V

    sget-object v0, Lkotlinx/serialization/descriptors/o;->c:Lkotlinx/serialization/descriptors/o;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/g;

    new-instance v2, Lkotlinx/serialization/internal/MapEntrySerializer$descriptor$1;

    invoke-direct {v2, p1, p2}, Lkotlinx/serialization/internal/MapEntrySerializer$descriptor$1;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V

    const-string p1, "kotlin.collections.Map.Entry"

    invoke-static {p1, v0, v1, v2}, Lkotlinx/serialization/descriptors/k;->b(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;[Lkotlinx/serialization/descriptors/g;Lvb/b;)Lkotlinx/serialization/descriptors/h;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/t0;->c:Lkotlinx/serialization/descriptors/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lkotlinx/serialization/internal/s0;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/t0;->c:Lkotlinx/serialization/descriptors/h;

    return-object p0
.end method
