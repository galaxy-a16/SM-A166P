.class public final Lkotlinx/serialization/json/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final a:Lkotlinx/serialization/json/f;

.field public static final b:Lkotlinx/serialization/json/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/f;

    invoke-direct {v0}, Lkotlinx/serialization/json/f;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/f;->a:Lkotlinx/serialization/json/f;

    sget-object v0, Lkotlinx/serialization/json/e;->b:Lkotlinx/serialization/json/e;

    sput-object v0, Lkotlinx/serialization/json/f;->b:Lkotlinx/serialization/json/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 3

    const-string p0, "decoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp9/d;->d(Lzb/c;)Lkotlinx/serialization/json/j;

    new-instance p0, Lkotlinx/serialization/json/d;

    sget-object v0, Lkotlinx/serialization/json/m;->a:Lkotlinx/serialization/json/m;

    new-instance v1, Lkotlinx/serialization/internal/d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/internal/d;-><init>(Lkotlinx/serialization/c;I)V

    invoke-virtual {v1, p1}, Lkotlinx/serialization/internal/a;->deserialize(Lzb/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/d;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/f;->b:Lkotlinx/serialization/json/e;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lkotlinx/serialization/json/d;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp9/d;->b(Lzb/d;)V

    sget-object p0, Lkotlinx/serialization/json/m;->a:Lkotlinx/serialization/json/m;

    new-instance v0, Lkotlinx/serialization/internal/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/internal/d;-><init>(Lkotlinx/serialization/c;I)V

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/internal/t;->serialize(Lzb/d;Ljava/lang/Object;)V

    return-void
.end method
