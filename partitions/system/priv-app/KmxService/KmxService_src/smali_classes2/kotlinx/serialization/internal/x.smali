.class public final Lkotlinx/serialization/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final a:Lkotlinx/serialization/internal/x;

.field public static final b:Lkotlinx/serialization/internal/e1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/x;

    invoke-direct {v0}, Lkotlinx/serialization/internal/x;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/x;->a:Lkotlinx/serialization/internal/x;

    new-instance v0, Lkotlinx/serialization/internal/e1;

    sget-object v1, Lkotlinx/serialization/descriptors/e;->d:Lkotlinx/serialization/descriptors/e;

    const-string v2, "kotlin.Double"

    invoke-direct {v0, v2, v1}, Lkotlinx/serialization/internal/e1;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)V

    sput-object v0, Lkotlinx/serialization/internal/x;->b:Lkotlinx/serialization/internal/e1;

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

    invoke-interface {p1}, Lzb/c;->F()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lkotlinx/serialization/internal/x;->b:Lkotlinx/serialization/internal/e1;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lzb/d;->e(D)V

    return-void
.end method
