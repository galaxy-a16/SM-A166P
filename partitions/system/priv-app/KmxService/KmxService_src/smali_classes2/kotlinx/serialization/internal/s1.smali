.class public final Lkotlinx/serialization/internal/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final a:Lkotlinx/serialization/internal/s1;

.field public static final b:Lkotlinx/serialization/internal/i0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/s1;

    invoke-direct {v0}, Lkotlinx/serialization/internal/s1;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/s1;->a:Lkotlinx/serialization/internal/s1;

    sget-object v0, Lkotlinx/serialization/internal/j;->a:Lkotlinx/serialization/internal/j;

    const-string v1, "kotlin.UByte"

    invoke-static {v1, v0}, Li4/f;->b(Ljava/lang/String;Lkotlinx/serialization/c;)Lkotlinx/serialization/internal/i0;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/internal/s1;->b:Lkotlinx/serialization/internal/i0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/s1;->b:Lkotlinx/serialization/internal/i0;

    invoke-interface {p1, p0}, Lzb/c;->s(Lkotlinx/serialization/descriptors/g;)Lzb/c;

    move-result-object p0

    invoke-interface {p0}, Lzb/c;->z()B

    move-result p0

    new-instance p1, Lkotlin/k;

    invoke-direct {p1, p0}, Lkotlin/k;-><init>(B)V

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/s1;->b:Lkotlinx/serialization/internal/i0;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlin/k;

    iget-byte p0, p2, Lkotlin/k;->a:B

    const-string p2, "encoder"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lkotlinx/serialization/internal/s1;->b:Lkotlinx/serialization/internal/i0;

    invoke-interface {p1, p2}, Lzb/d;->l(Lkotlinx/serialization/descriptors/g;)Lzb/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lzb/d;->g(B)V

    return-void
.end method
