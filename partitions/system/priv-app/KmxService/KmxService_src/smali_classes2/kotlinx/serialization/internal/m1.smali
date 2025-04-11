.class public final Lkotlinx/serialization/internal/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final a:Lkotlinx/serialization/internal/m1;

.field public static final b:Lkotlinx/serialization/internal/e1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/m1;

    invoke-direct {v0}, Lkotlinx/serialization/internal/m1;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/m1;->a:Lkotlinx/serialization/internal/m1;

    new-instance v0, Lkotlinx/serialization/internal/e1;

    sget-object v1, Lkotlinx/serialization/descriptors/e;->i:Lkotlinx/serialization/descriptors/e;

    const-string v2, "kotlin.String"

    invoke-direct {v0, v2, v1}, Lkotlinx/serialization/internal/e1;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)V

    sput-object v0, Lkotlinx/serialization/internal/m1;->b:Lkotlinx/serialization/internal/e1;

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

    invoke-interface {p1}, Lzb/c;->D()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/m1;->b:Lkotlinx/serialization/internal/e1;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lzb/d;->r(Ljava/lang/String;)V

    return-void
.end method
