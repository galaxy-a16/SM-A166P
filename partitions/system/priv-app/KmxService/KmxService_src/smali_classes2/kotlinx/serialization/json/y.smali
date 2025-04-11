.class public final Lkotlinx/serialization/json/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final a:Lkotlinx/serialization/json/y;

.field public static final b:Lkotlinx/serialization/json/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/y;

    invoke-direct {v0}, Lkotlinx/serialization/json/y;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/y;->a:Lkotlinx/serialization/json/y;

    sget-object v0, Lkotlinx/serialization/json/x;->b:Lkotlinx/serialization/json/x;

    sput-object v0, Lkotlinx/serialization/json/y;->b:Lkotlinx/serialization/json/x;

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

    invoke-static {p1}, Lp9/d;->d(Lzb/c;)Lkotlinx/serialization/json/j;

    new-instance p0, Lkotlinx/serialization/json/w;

    sget-object v0, Lkotlinx/serialization/internal/m1;->a:Lkotlinx/serialization/internal/m1;

    sget-object v0, Lkotlinx/serialization/json/m;->a:Lkotlinx/serialization/json/m;

    invoke-static {}, Lp9/d;->a()Lkotlinx/serialization/internal/h0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/serialization/internal/a;->deserialize(Lzb/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/w;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/y;->b:Lkotlinx/serialization/json/x;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/w;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp9/d;->b(Lzb/d;)V

    sget-object p0, Lkotlinx/serialization/internal/m1;->a:Lkotlinx/serialization/internal/m1;

    sget-object p0, Lkotlinx/serialization/json/m;->a:Lkotlinx/serialization/json/m;

    invoke-static {}, Lp9/d;->a()Lkotlinx/serialization/internal/h0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/v0;->serialize(Lzb/d;Ljava/lang/Object;)V

    return-void
.end method
