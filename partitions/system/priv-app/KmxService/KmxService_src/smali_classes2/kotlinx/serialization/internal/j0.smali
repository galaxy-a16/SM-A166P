.class public final Lkotlinx/serialization/internal/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/f0;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/c;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/internal/j0;->a:Lkotlinx/serialization/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/c;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlinx/serialization/c;

    const/4 v1, 0x0

    iget-object p0, p0, Lkotlinx/serialization/internal/j0;->a:Lkotlinx/serialization/c;

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unsupported"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unsupported"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final typeParametersSerializers()[Lkotlinx/serialization/c;
    .locals 0

    sget-object p0, Lva/n;->e:[Lkotlinx/serialization/c;

    return-object p0
.end method
