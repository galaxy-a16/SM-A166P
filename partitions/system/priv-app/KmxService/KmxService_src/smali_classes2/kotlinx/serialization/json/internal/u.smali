.class public abstract Lkotlinx/serialization/json/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [Lkotlinx/serialization/descriptors/g;

    sget-object v2, Lkotlinx/serialization/internal/v1;->b:Lkotlinx/serialization/internal/i0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/y1;->b:Lkotlinx/serialization/internal/i0;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/s1;->b:Lkotlinx/serialization/internal/i0;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/b2;->b:Lkotlinx/serialization/internal/i0;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lv9/a;->B(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v2, v1}, Lkotlin/collections/m;->p0(Ljava/util/LinkedHashSet;[Ljava/lang/Object;)V

    sput-object v2, Lkotlinx/serialization/json/internal/u;->a:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static final a(Lkotlinx/serialization/descriptors/g;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/g;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/serialization/json/internal/u;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
