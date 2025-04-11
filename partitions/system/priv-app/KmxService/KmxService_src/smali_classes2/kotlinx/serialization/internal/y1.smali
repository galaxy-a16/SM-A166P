.class public final Lkotlinx/serialization/internal/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final a:Lkotlinx/serialization/internal/y1;

.field public static final b:Lkotlinx/serialization/internal/i0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/y1;

    invoke-direct {v0}, Lkotlinx/serialization/internal/y1;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/y1;->a:Lkotlinx/serialization/internal/y1;

    sget-object v0, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    const-string v1, "kotlin.ULong"

    invoke-static {v1, v0}, Li4/f;->b(Ljava/lang/String;Lkotlinx/serialization/c;)Lkotlinx/serialization/internal/i0;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/internal/y1;->b:Lkotlinx/serialization/internal/i0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 1

    const-string p0, "decoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/y1;->b:Lkotlinx/serialization/internal/i0;

    invoke-interface {p1, p0}, Lzb/c;->s(Lkotlinx/serialization/descriptors/g;)Lzb/c;

    move-result-object p0

    invoke-interface {p0}, Lzb/c;->d()J

    move-result-wide p0

    new-instance v0, Lkotlin/o;

    invoke-direct {v0, p0, p1}, Lkotlin/o;-><init>(J)V

    return-object v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/y1;->b:Lkotlinx/serialization/internal/i0;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lkotlin/o;

    iget-wide v0, p2, Lkotlin/o;->a:J

    const-string p0, "encoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/y1;->b:Lkotlinx/serialization/internal/i0;

    invoke-interface {p1, p0}, Lzb/d;->l(Lkotlinx/serialization/descriptors/g;)Lzb/d;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lzb/d;->o(J)V

    return-void
.end method
