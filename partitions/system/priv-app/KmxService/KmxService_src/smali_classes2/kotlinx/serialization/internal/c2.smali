.class public final Lkotlinx/serialization/internal/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final b:Lkotlinx/serialization/internal/c2;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/internal/x0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/c2;

    invoke-direct {v0}, Lkotlinx/serialization/internal/c2;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/c2;->b:Lkotlinx/serialization/internal/c2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/internal/x0;

    invoke-direct {v0}, Lkotlinx/serialization/internal/x0;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/c2;->a:Lkotlinx/serialization/internal/x0;

    return-void
.end method


# virtual methods
.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/c2;->a:Lkotlinx/serialization/internal/x0;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/x0;->deserialize(Lzb/c;)Ljava/lang/Object;

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/c2;->a:Lkotlinx/serialization/internal/x0;

    invoke-virtual {p0}, Lkotlinx/serialization/internal/x0;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lkotlin/s;

    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/c2;->a:Lkotlinx/serialization/internal/x0;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/x0;->serialize(Lzb/d;Ljava/lang/Object;)V

    return-void
.end method
